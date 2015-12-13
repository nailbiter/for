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
int serve_a_file(char* arg){
    printf("[");
    jsmn_parser parser;
    jsmn_init(&parser);
    jsmntok_t tokens[256];
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

void save_test(json_t* root,const char* filename,const char* msg)
{
    FILE* out = fopen(filename,"w");
    fprintf(out,"# vim: set ft=fc_conf:\n");
    if( msg != NULL ) fprintf(out,"#%s\n",msg);
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

json_t* read_test(const char* filename,json_error_t* error_ptr)
{
    std::ifstream file(filename);
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

    json_t *root = json_loads(output.c_str(),0,error_ptr);
    if( !root || !json_is_object(root) )
    {
        printf("\"!root\"");
        return NULL;
    }
    return root;
}

int write_a_file(char* arg)
{
    json_t *root;
    json_error_t error;
    char msg[1000];

    std::ifstream file("ttt.txt");
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
    if( !request_root || !json_is_array(request_root) )
    {
        printf("\"!request_root: %s, with error: %s\"",arg,error.text);
        return 0;
    }
    int index = json_integer_value(json_array_get(request_root,0));
    if( index >= json_array_size(dataitems) || ( index < 0 ) )
    {
        json_array_append(dataitems,json_array_get(request_root,1));
        sprintf(msg,"append, so now we have %d items",json_array_size(dataitems));
    }
    else
    {
        json_array_set(dataitems,index,json_array_get(request_root,1));
        sprintf(msg,"set item %d, so now we still have %d items",index,json_array_size(dataitems));
    }

    save_test(root,"ttt.txt",arg);
    printf("\"%s\"",msg);
    return 0;
}

int get_hira(char* arg)
{
    //printf("\"bad %s\"",arg);
    char cmd[500];
    sprintf(cmd,"echo \"%s\" |./kakasi -i utf8 -JH",arg);
    FILE* res = popen(cmd,"r");
    if( res == NULL )
    {
        printf("\"cannot do\"");
        return 0;
    }
    char buf[500];
    fread(buf,1,500,res);
    char *ptr=NULL;
    while((ptr=strchr(buf,'\n'))!=NULL) *ptr = '\0';
    printf("\"%s\"",buf);
    fclose(res);
    //system(cmd);
    return 0;
}

int create_tag(char* arg)
{
    std::ifstream file("ttt.txt");
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

    json_error_t error;
    json_t *root = json_loads(output.c_str(),0,&error);
    if( !root || !json_is_object(root) )
    {
        printf("\"!root\"");
        return 0;
    }


    json_t *generators = json_object_get(root,"generators");
    int anchor = json_array_size(generators) - 2;
    json_t *usualmeta = json_array_get(generators,anchor-1);
    json_t *usual = json_deep_copy(json_array_get(generators,anchor-2));
    json_t *simplemeta = json_deep_copy(json_array_get(generators,anchor-3));
    json_t *simple = json_deep_copy(json_array_get(generators,anchor-4));

    char buf[100];
    sprintf(buf,"%s usual",arg);
    json_object_set(usualmeta,"name",json_string(buf));

    char buf1[100];
    sprintf(buf1,"%s simple",arg);
    json_object_set(simplemeta,"name",json_string(buf1));

    json_t* array = NULL;
    array = json_array();
    json_array_append(array,json_string(arg));
    json_object_set(usual,"tags",array);

    array = json_array();
    json_array_append(array,json_string(arg));
    json_array_append(array,json_string("simple"));
    json_object_set(simple,"tags",array);

    json_array_insert(generators,anchor-1,usual);
    json_array_insert(generators,anchor-1,simplemeta);
    json_array_insert(generators,anchor-1,simple);

    save_test(root,"ttt.txt",NULL);
    printf("\"create pack for tag %s, now gave %d generators\"",arg,json_array_size(generators));
    return 0;
}

int replace_only(char* arg)
{
    json_error_t error;

    json_t *request_root;
    request_root = json_loads(arg, 0, &error);
    if( !request_root || !json_is_object(request_root) )
    {
        printf("\"!request_root: %s, with error: %s\"",arg,error.text);
        return 0;
    }
    char* from = json_string_value(json_object_get(request_root,"from")),
            *to = json_string_value(json_object_get(request_root,"to"));

    json_t* root = read_test("ttt.txt",&error);
    if( !root ) return 0;

    int ctr = 0;
    json_t *dataitems = json_object_get(root,"dataitems");
    for(int i = 0, len = json_array_size(dataitems); i < len; i++)
    {
        json_t* item = json_array_get(dataitems,i);
        json_t* tags = json_object_get(item,"tags");
        if( !tags || ( json_array_size(tags) > 1 ) || strcmp(json_string_value(json_array_get(tags,0)),from) )
            continue;
        json_array_set(tags,0,json_string(to));
        ctr++;
    }

    save_test(root,"ttt.txt",NULL);
    printf("\"%s->%s, %d replaced\"",from,to,ctr);
    return 0;
}

int set_tag(char* arg)
{
    json_error_t error;

    json_t *request_root;
    request_root = json_loads(arg, 0, &error);
    if( !request_root || !json_is_array(request_root) )
    {
        printf("\"!request_root: %s, with error: %s\"",arg,error.text);
        return 0;
    }

    json_t* root = read_test(json_string_value(json_array_get(request_root,2)),&error);
    if( !root ) return 0;

    int indexToSet = json_integer_value(json_array_get(request_root,0));
    json_t *dataitems = json_object_get(root,"dataitems"),
           *item = json_array_get(dataitems,indexToSet);
    json_array_append(json_object_get(item,"tags"),json_array_get(request_root,1));

    /*json_t *generators = json_object_get(root,"generators");
    json_t* newgen = json_deep_copy(json_array_get(generators,json_array_size(generators)-1));
    json_array_set(json_object_get(newgen,"tags"),0,json_string(arg));
    json_array_append(generators,newgen);*/

    save_test(root,json_string_value(json_array_get(request_root,2)),NULL);
    printf("[%s,\"%s\"]",json_dumps(item,0),json_string_value(json_array_get(request_root,1)));
    return 0;
}

int remove_tag(char* arg)
{
    json_error_t error;

    json_t* root = read_test("ttt.txt",&error);
    if( !root ) return 0;

    json_t *dataitems = json_object_get(root,"dataitems");
    int replaced = 0;
    for( int i = 0; i < json_array_size(dataitems); i++ )
    {
        json_t *tags = json_object_get(json_array_get(dataitems,i),"tags");
        int flag = 0;
        for( int j = 0; j < json_array_size(tags); j++ )
            if( !strcmp(json_string_value(json_array_get(tags,j)),arg) )
            {
                json_array_remove(tags,j);
                flag = 1;
            }
        if( flag ) replaced++;
    }

    save_test(root,"ttt.txt",NULL);
    printf("\"%d items removed tag %s\"",replaced,arg);
    return 0;
}

int commit_pending(char* arg)
{
    json_error_t error;
    char fname[50];
    strcpy(fname,"reads.txt");

    json_t* root = read_test(fname,&error);
    if( !root ) return 0;

    json_t *dataitems = json_object_get(root,"dataitems");
    int replaced = 0;
    for( int i = 0; i < json_array_size(dataitems); i++ )
    {
        json_t *tags = json_object_get(json_array_get(dataitems,i),"tags");
        int flag = 0;
        for( int j = 0; j < json_array_size(tags); j++ )
            if( !strcmp(json_string_value(json_array_get(tags,j)),"pending") )
            {
                json_array_set(tags,j,json_string("simple"));
                flag = 1;
            }
        if( flag ) replaced++;
    }

    save_test(root,"reads.txt",NULL);
    printf("\"committed %d items in %s\"",replaced,fname);
    return 0;
}
