#include <stdio.h>
#include <stdlib.h>
#include <sys/mman.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <unistd.h>
#include <string.h>
#include <time.h>
#include <dirent.h>
#include <string.h>
#include <string>
#include <vector>
#include <iostream>
#include <fstream>
#include "jsmn.h"

FILE* logfile = NULL;

void get_files(std::vector<std::string>& filenames);
void serve_files(std::string& output);
void serve_chosen_file(std::string& output,const std::string& filename);
void trim(char** start_ptr,char* end);
void log(const char* s);
int decode( char** src,char** dst);
void we_got_json(char* json_s);

//got: with callback
//{callback:string,command:string,argument:obj}
int main(void) 
{
    printf( "Content-type: application/javascript; charset=utf-8\n\n");
    //logfile = fopen("/home/nailbiter/public_html/log.txt", "w");

    std::string output = "clientCallback(",query;
#if 1
    query=std::string(getenv("QUERY_STRING"));
#else
    query="canto.txt";
#endif

    char buf[1000];
    char *p1=(char*)query.c_str(), *p2=buf;
    decode(&p1,&p2);
    if( buf[0] == '{' )
    {
        we_got_json(buf);
        return 0;
    }

    if( query.length() == 0 )
    	serve_files(output);
    else
	    serve_chosen_file(output,query);
    printf("%s\n",output.c_str());
    //fclose(logfile);
    return 0;
}

void log(const char* s){ fprintf(logfile,"%s\n",s); }//FIXME: does not work
void serve_chosen_file(std::string& output,const std::string& filename)
{
    std::ifstream file(filename.c_str());
    std::string line;
    //output += "{\"lines\":[";
    if( file.is_open() )
    {
        while( getline(file,line) )
	    {
            if( line[0] != '#' ) 
            	output += line;
            	//output += (" ,\"" + line + "\"");
	    }
    }
    file.close();
    //output += "]});";
    output += ");";
}

void we_got_json(char* json_s)
{
    jsmn_parser parser;
    char callback_key[] = "callback";
    char buf[100];

    jsmn_init(&parser);
    jsmntok_t tokens[256];//FIXME: make it bigger, perhaps
    jsmn_parse(&parser, json_s,strlen(json_s), tokens, 256);
    printf("%d\n",sizeof(callback_key)/sizeof(callback_key[0]));
    for( int i = 0; !i || tokens[i].start ; i++ )
    {
        printf("%d %d %d %d: %.*s\n",(int)tokens[i].type,tokens[i].start,tokens[i].end,tokens[i].size,
                tokens[i].end-tokens[i].start,json_s+tokens[i].start);
        if( ( sizeof(callback_key) / sizeof(callback_key[0]) - 1 ) == ( tokens[i].end-tokens[i].start ) &&
                !strncmp(json_s+tokens[i].start,callback_key, sizeof(callback_key) / sizeof(callback_key[0])-1) )
        {
            memcpy(buf,json_s+tokens[i+1].start,tokens[i+1].end-tokens[i+1].start);
            buf[tokens[i+1].end-tokens[i+1].start] = '\0';
        }
    }
    printf("buf=%s\n",buf);
}

void serve_files(std::string& output)
{
    std::vector<std::string> filenames;
    get_files(filenames);
    output += "{\"filenames\":[";
    output += ("\"" + filenames[0] + "\"");
    for( int i = 1; i < (int)filenames.size(); i++)
        output += (" ,\"" + filenames[i] + "\"");
    output += "]});";
}

void get_files(std::vector<std::string>& filenames)
{
    DIR *dir;
    struct dirent *ent;
    char cwd[1024];
    getcwd(cwd, sizeof(cwd));
    filenames.clear();
    if ( (dir = opendir(cwd)) != NULL )
    {
      /* print all the files and directories within directory */
      while ( (ent = readdir (dir)) != NULL ) 
      {
          int len=strlen(ent->d_name);
          if(len>=4 && strncmp(".txt",ent->d_name+len-4,4) == 0)
              filenames.push_back(std::string(ent->d_name));
      }
      closedir (dir);
    }
}
int other_main(void)
{
    char *line = NULL;
    size_t n = 0;
    printf("\"dataitems\" : [\n");
    while( getline(&line,&n,stdin) != -1 )
    {
        if( line[0] == '#' )
        {
            printf("%s",line);
            continue;
        }

        printf("{ \"items\" : [");
        char* start = line, *end = start;
        for(; *end != '\n' && *end != '\0'; end++ )
        {
            if( end[0] == ',' && end[-1] != '\\' )
            {
                end[0] = '\0';
                trim(&start,end);
                printf("\"%s\", ",start);
                start = end + 1;
                continue;
            }
            if( end[0] == ';' && end[-1] != '\\' )
            {
                end[0] = '\0';
                trim(&start,end);
                printf("\"%s\"], \"tags\" : [",start);
                start = end + 1;
                continue;
            }
        }
        end[0] = '\0';
        trim(&start,end);
        printf("\"%s\"]},\n",start);
    }
    free(line);
    printf("]}\n");
    return 0;
}

void trim(char** start_ptr,char* end)
{
    while( (*start_ptr)[0] == ' ' ) (*start_ptr)++;
    end--;
    while( end[0] == ' ' ) end--;
    end[1] = '\0';
}
int decode( char** src,char** dst){
    for(; **src!='\0' && **src!='&' && **src!='=' ;(*src)++,(*dst)++){
        if(**src == '%'){
            (*src)++;   char code1 = **src;
            (*src)++;   char code2 = **src;
            if(code1 == '2' && code2== '0') **dst = ' ';
            else if(code1 == '2' && code2== '1') **dst = '!';//0x21
            else if(code1 == '2' && code2== '2') **dst = '\"';
            else if(code1 == '2' && code2== '3') **dst = '#';//0x23                                                                                  
            else if(code1 == '2' && code2== '4') **dst = '$';//0x24                                                                                  
            else if(code1 == '2' && code2== '5') **dst = '%';//0x25                                                                                  
            else if(code1 == '2' && code2== '6') **dst = '&';//0x26                                                                                  
            else if(code1 == '2' && code2== '7') { **dst = '\''; (*dst)++; **dst = '\'';}//0x27                                                      
            else if(code1 == '2' && code2== '8') **dst = '(';//0x28                                                                                  
            else if(code1 == '2' && code2== '9') **dst = ')';//0x29                                                                                  
            else if(code1 == '2' && code2== 'B') **dst = '+';//0x2B                                                                                  
            else if(code1 == '2' && code2== 'C') **dst = ',';//0x2C                                                                                  
            else if(code1 == '2' && code2== 'F') **dst = '/';//0x2F                                                                                  
            else if(code1 == '3' && code2== 'A') **dst = ':';//0x3A                                                                                  
            else if(code1 == '3' && code2== 'B') **dst = ';';//0x3B                                                                                  
            else if(code1 == '3' && code2== 'C') **dst = '<';//0x3C                                                                                  
            else if(code1 == '3' && code2== 'D') **dst = '=';//0x3D                                                                                  
            else if(code1 == '3' && code2== 'E') **dst = '>';//0x3E                                                                                  
            else if(code1 == '3' && code2== 'F') **dst = '?';//0x3F                                                                                  
            else if(code1 == '4' && code2== '0') **dst = '@';//0x40                                                                                  
            else if(code1 == '5' && code2== 'B') **dst = '[';//0x5B                                                                                  
            else if(code1 == '5' && code2== 'C') **dst = '\\';//0x5C                                                                                 
            else if(code1 == '5' && code2== 'D') **dst = ']';//0x5D                                                                                  
            else if(code1 == '5' && code2== 'E') **dst = '^';//0x5E                                                                                  
            else if(code1 == '7' && code2== 'B') **dst = '{';//0x7B                                                                                  
            else if(code1 == '7' && code2== 'C') **dst = '|';//0x7C                                                                                  
            else if(code1 == '7' && code2== 'D') **dst = '}';//0x7D                                                                                  
            else if(code1 == '7' && code2== 'E') **dst = '~';//0x7E                                                                                  
            else if(code1 == 'A' && code2== '3') { **dst = 0xC2 ; (*dst)++; **dst = 0xA3;}//0x27                                                     
            else if(code1 == '0' && code2== 'A') **dst = ' ';
            else if(code1 == '0' && code2== 'D') (*dst)--;                                                                                           
            else **dst = ' ';                                                                                                                        
        }else{                                                                                                                                       
            **dst = **src;                                                                                                                           
        }                                                                                                                                            
    }                                                                                                                                                
    if(**src == '\0') **dst='\0';
    return 0;                                                                                                                                        
}
//.,$w !./tmp.c.exe > out.buf
