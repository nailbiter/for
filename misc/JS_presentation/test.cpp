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

/*void get_files(std::vector<std::string>& filenames);
void serve_files(std::string& output);
void serve_chosen_file(std::string& output,const std::string& filename);
void trim(char** start_ptr,char* end);*/
int decode( char** src,char** dst);

int main(void) 
{
    printf( "Content-type: application/javascript; charset=utf-8\n\n");

    std::string query;
#if 1
    query=std::string(getenv("QUERY_STRING"));
#else
    query="canto.txt";
#endif

    char buf[1000],s[1000];
    strcpy(s,query.c_str());
    char* ptr=buf,*ptrp=s;
    decode((char**)&ptrp,(char**)&ptr);
    std::string mquery(buf);
    std::string output = "clientCallback("+mquery+");";

    printf("%s\n",output.c_str());
    return 0;
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
