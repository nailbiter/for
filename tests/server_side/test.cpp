#include <stdio.h>
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

void get_files(std::vector<std::string>& filenames);
void serve_files(std::string& output);
void serve_chosen_file(std::string& output,const std::string& filename);

int main(void) 
{
    printf( "Content-type: application/javascript; charset=utf-8\n\n");

    std::string output = "clientCallback(",query;
#if 1
    query=std::string(getenv("QUERY_STRING"));
#else
    query="canto.txt";
#endif

    if( query.length() == 0 )
    	serve_files(output);
    else
	    serve_chosen_file(output,query);
    printf("%s\n",output.c_str());
    return 0;
}

void serve_chosen_file(std::string& output,const std::string& filename)
{
    std::ifstream file(filename.c_str());
    std::string line;
    output += "{\"lines\":[";
    if( file.is_open() )
    {
        getline(file,line);
        output += ("\"" + line + "\"");
        while( getline(file,line) )
            output += (" ,\"" + line + "\"");
    }
    file.close();
    output += "]});";
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
