#include <stdio.h>

#define BUFFERSIZE 250

char *tstStr = "This is a test!";
char outStr[BUFFERSIZE];

int main()
{
	toupper(tstStr, outStr);
	printf("Input: %s\nOutput: %s\n", tstStr, outStr);
	
	return(0);
}
