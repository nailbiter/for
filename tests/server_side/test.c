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

void print_files();

int main(void) 
{
  printf("Content-Type: text/plain;charset=us-ascii\n\n");
  printf("Hello world\n\n");
  print_files();
  return 0;
}

void print_files()
{
    DIR *dir;
    struct dirent *ent;
    char cwd[1024];
    getcwd(cwd, sizeof(cwd));
    //strcat(cwd,"/../FC");
    if ((dir = opendir (cwd)) != NULL) {
      /* print all the files and directories within directory */
      while ( (ent = readdir (dir)) != NULL ) 
      {
	char* end=ent->d_name+strlen(ent->d_name)-1;
	printf("%s\n",ent->d_name);
      }
      closedir (dir);
    } else {
      /* could not open directory */
	//print_quiz_table_item("fail",NULL,cwd);
    }
}
