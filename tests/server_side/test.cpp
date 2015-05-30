#define _WITH_GETLINE
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
#include <stdio.h>
#include <assert.h>

#include "jsmn.h"
#include "jansson.h"
#include "callbacks.h"

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
void trim(char** start_ptr,char* end);
void log(const char* s);
void we_got_json(char* json_s, callback callbacks[], int callback_len);
#define CALLBACK(fncname,cmdname)\
{\
    sprintf(callbacks[callback_len].name, #cmdname );\
    callbacks[callback_len].f = fncname;\
    callback_len++;\
}

//got: with callback
//{callback:string,command:string,argument:obj}
void unencode(const char *src,const char *last, char *dest)
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

    callback callbacks[20];
    int callback_len = 0;
    CALLBACK(serve_a_file,get);
    CALLBACK(write_a_file,write);
    CALLBACK(get_hira,hira);
    CALLBACK(create_tag,createtag);
    CALLBACK(replace_only,replaceonly);
    CALLBACK(set_tag,settag);
    CALLBACK(commit_pending,commitpending);

    if(!true)
    {
        FILE* file = fopen("log.txt","w");
        fprintf(file,"here I go hard\n");
        printf("here I was");
        fclose(file);
        return 0;
    }

    if(!strcmp("POST",getenv("REQUEST_METHOD")))
    {
        int len = 0;
        sscanf(getenv("CONTENT_LENGTH"),"%ld",&len);
        char* msg = (char*)malloc(len+2);
        fgets(msg,len+1,stdin);
        unencode(msg, msg+len, msg);
        we_got_json(msg,callbacks,callback_len);
        return 0;
    }

    std::string output = "clientCallback(",query;
#if 1
    query=std::string(getenv("QUERY_STRING"));
#else
    query="canto.txt";
#endif

    char buf[5000];
    char *p1=(char*)query.c_str(), *p2=buf;
    unencode(query.c_str(),query.c_str()+query.length(),buf);

    if( buf[0] == '{' )
    {
        //logfile = fopen("/home/nailbiter/public_html/log.txt", "a");
        //if( logfile == NULL ) printf("no good\n");
        //log("-------------------------NEW LOG-----------------\n");
        we_got_json(buf,callbacks,callback_len);
        //fclose(logfile);
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
//.,$w !./tmp.c.exe > out.buf
