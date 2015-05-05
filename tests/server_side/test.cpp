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
#include <jansson.h>

#define BUFSIZE 1000

typedef int (*callbackfcn)(char* arg);
typedef struct {
    char name[50];
    callbackfcn f;
} callback;

FILE* logfile = NULL;

void get_files(std::vector<std::string>& filenames);
void serve_files(std::string& output);
void serve_chosen_file(std::string& output,const std::string& filename);
int serve_a_file(char* arg);
int write_a_file(char* arg);
void trim(char** start_ptr,char* end);
void log(const char* s);
int decode( char** src,char** dst);
void we_got_json(char* json_s, callback callbacks[], int callback_len);
void save_test(json_t* root,const char* filename);

//got: with callback
//{callback:string,command:string,argument:obj}
void unencode(char *src, char *last, char *dest)
{
 for(; src != last; src++, dest++)
   if(*src == '+')
     *dest = ' ';
   else if(*src == '%') {
     int code;
     if(sscanf(src+1, "%2x", &code) != 1) code = '?';
     *dest = code;
     src +=2; }     
   else
     *dest = *src;
 *dest = '\0';
 /**dest = '\n';
 *++dest = '\0';*/
}

int main(void) 
{
    printf( "Content-type: application/javascript; charset=utf-8\n\n");

    if(!strcmp("POST",getenv("REQUEST_METHOD")))
    {
        int len = 0;
        sscanf(getenv("CONTENT_LENGTH"),"%ld",&len);
        char* msg = (char*)malloc(len+2);
        fgets(msg,len+1,stdin);
        unencode(msg, msg+len, msg);
        printf("ARNOLD:%s",msg);
        return 0;
    }

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
        logfile = fopen("/home/nailbiter/public_html/log.txt", "a");
        if( logfile == NULL ) printf("no good\n");
        log("-------------------------NEW LOG-----------------\n");
        callback callbacks[5];
        sprintf(callbacks[0].name,"get");
        callbacks[0].f = serve_a_file;
        sprintf(callbacks[1].name,"write");
        callbacks[1].f = write_a_file;
        we_got_json(buf,callbacks,2);
        fclose(logfile);
        return 0;
    }

    if( query.length() == 0 )
    	serve_files(output);
    else
	    serve_chosen_file(output,query);
    printf("%s\n",output.c_str());
    return 0;
}

void log(const char* s){ fprintf(logfile,"%s\n",s); }
void serve_chosen_file(std::string& output,const std::string& filename)
{
    std::ifstream file(filename.c_str());
    std::string line;
    //output += "{\"lines\":[";
    if( file.is_open() )
    {
        while( getline(file,line) )
	    {
            if( line[0] != '#' ) //FIXME: # can be not at the beginning
            	output += line;
            	//output += (" ,\"" + line + "\"");
	    }
    }
    file.close();
    //output += "]});";
    output += ");";
}

void we_got_json(char* json_s,callback callbacks[], int callback_len)
{
    jsmn_parser parser;

    jsmn_init(&parser);
    jsmntok_t tokens[256];//should never be big, we don't want client to send many data
    jsmn_parse(&parser, json_s,strlen(json_s), tokens, 256);
    //printf("%d\n",sizeof(callback_key)/sizeof(callback_key[0]));

    int starts[3]={-1,-1,-1}, //callback, arg, command
        ends[3] = {-1,-1,-1};

    for( int i = 0; !i || tokens[i].start ; i++ )
    {
        /*printf("%d %d %d %d: %.*s\n",(int)tokens[i].type,tokens[i].start,tokens[i].end,tokens[i].size,
                tokens[i].end-tokens[i].start,json_s+tokens[i].start);*/
        if( ( starts[0] < 0 ) &&  ( strlen("callback") == (tokens[i].end - tokens[i].start) ) &&
                !strncmp(json_s+tokens[i].start,"callback", strlen("callback")) ) 
        {
            starts[0] = tokens[i+1].start;
            ends[0] = tokens[i+1].end;
            continue;
        }
        if( ( starts[1] < 0 ) &&  ( strlen("arg") == (tokens[i].end - tokens[i].start) ) &&
                !strncmp(json_s+tokens[i].start,"arg", strlen("arg")) ) 
        {
            starts[1] = tokens[i+1].start;
            ends[1] = tokens[i+1].end;
            continue;
        }
        if( ( starts[2] < 0 ) &&  ( strlen("cmd") == (tokens[i].end - tokens[i].start) ) &&
                !strncmp(json_s+tokens[i].start,"cmd", strlen("cmd")) ) 
        {
            starts[2] = tokens[i+1].start;
            ends[2] = tokens[i+1].end;
            continue;
        }
    }

    if( ( starts[0] < 0 ) || ( starts[2] < 0 ) )
    {
        printf("error");
        return;
    }

    for( int i = 0; i < callback_len; i++ )
    {
        if( !strncmp(callbacks[i].name,json_s+starts[2],strlen(callbacks[i].name)) )
        {
            printf("%.*s(",ends[0]-starts[0],json_s+starts[0]);
            char buf[BUFSIZE];
            strncpy(buf,json_s+starts[1],ends[1]-starts[1]);
            callbacks[i].f(buf);
            printf(");");
            return;
        }
    }
    printf("nothing found!\n");
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
            else **dst = 16* ((code1<='9')?(code1-'0'):(10+code1-'A')) + ((code2<='9')?(code2-'0'):(10+code2-'A'));
            //else **dst = ' ';                                                                                                                        
        }else{                                                                                                                                       
            **dst = **src;                                                                                                                           
        }                                                                                                                                            
    }                                                                                                                                                
    if(**src == '\0') **dst='\0';
    return 0;                                                                                                                                        
}

int serve_a_file(char* arg){
    printf("[");
    jsmn_parser parser;
    jsmn_init(&parser);
    jsmntok_t tokens[256];//FIXME: make it bigger, perhaps
    jsmn_parse(&parser, arg,strlen(arg), tokens, 256);
    char buf[BUFSIZE];

    for( int i = 0; !i || tokens[i].start ; i++ )
        if( tokens[i].type == JSMN_STRING )
        {
            strncpy(buf,arg+tokens[i].start,tokens[i].end-tokens[i].start);
            buf[tokens[i].end-tokens[i].start]='\0';
            std::ifstream file(buf);
            std::string line;
            if( file.is_open() )
            {
                while( getline(file,line) )
                {
                    if( line[0] != '#' ) //FIXME: # can be not at the beginning
                        printf("%s\n",line.c_str());
                }
            }
            file.close();
            if( tokens[i+1].start != 0 ) printf(",");
        }
    printf("]");

    return 0;
}

int write_a_file(char* arg)
{
    json_t *root;
    json_error_t error;

    std::ifstream file("/home/nailbiter/public_html/cb/tests/ttt.txt");
    std::string line,output;
    //output += "{\"lines\":[";
    if( file.is_open() )
    {
        while( getline(file,line) )
	    {
            if( line[0] != '#' ) //FIXME: # can be not at the beginning
            	output += line;
	    }
    }
    file.close();
    root = json_loads(output.c_str(),0,&error);
    if( !root || !json_is_object(root) )
    {
        printf("\"!root\"");
        return 0;
    }
    json_t *dataitems = json_object_get(root,"dataitems"),
           *generators = json_object_get(root,"generators");

    json_t *request_root;
    request_root = json_loads(arg, 0, &error);
    int index = json_integer_value(json_array_get(request_root,0));
    if( index >= json_array_size(dataitems))
    {
        json_array_append(dataitems,json_array_get(request_root,1));
    }
    else
    {
        json_array_set(dataitems,index,json_array_get(request_root,1));
    }

    if( json_integer_value(json_array_get(request_root,2)) == 1 )//FIXME: generate full pack of generators: words and kanji(2)
    {
        //printf("\"new tag %s\"",json_string_value(json_array_get(json_object_get(json_array_get(request_root,1),"tags"),0)));
        json_t* newgen = json_copy(json_array_get(generators,json_array_size(generators)-1));
        json_array_set(json_object_get(newgen,"tags"),0,json_array_get(json_object_get(json_array_get(request_root,1),"tags"),0));
        json_array_append(generators,newgen);
    }

    save_test(root,"/home/nailbiter/public_html/cb/tests/ttt.txt");
    printf("\"%d generators and %d dataitems\"",json_array_size(generators),json_array_size(dataitems));
    return 0;
}

void save_test(json_t* root,const char* filename)//FIXME: beautiful printing: enter after every generator and dataitem
{
    FILE* out = fopen(filename,"w");
    fprintf(out,"# vim: set ft=fc_conf:\n");
    fprintf(out,"{");
    const char *key;
    json_t *value;

    int i = 0, len = json_object_size(root);
    json_object_foreach(root, key, value) 
    {
        i++;
        fprintf(out,"\"%s\":\n",key);
        if( !strcmp(key,"generators") || !strcmp(key,"dataitems") )
        {
            fprintf(out,"[");
            for( int i1 = 0, len1 = json_array_size(value); i1 < len1; i1++ )
            {
                json_dumpf(json_array_get(value,i1),out,JSON_ENCODE_ANY);
                if( (i1 + 1) < len1 ) fprintf(out,",\n");
            }
            fprintf(out,"]");
        }
        else
            json_dumpf(value,out,JSON_ENCODE_ANY);
        if( i < len ) fprintf(out,",\n");
    }
    fprintf(out,"}");
    fclose(out);
}
//.,$w !./tmp.c.exe > out.buf
//http://nailbiter.insomnia247.nl/cgi-bin/tests/FC.cgi?{"command":"saveTagsEnabled","callback":"","arg":[true,false]}
