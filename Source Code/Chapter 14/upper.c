#include <stdio.h>

int mytoupper(char *instr, char *outstr)
{
	char cur;
	
	do
	{
		cur = *instr;
		if ((cur >= 'a') && (cur <='z')) 
		{
			cur = cur - ('a'-'A');
		}	
		*outstr++ = cur;
		instr++;	
	} while (cur != '\0');
	return( outstr - instr );
}

#define BUFFERSIZE 250

char *tstStr = "This is a test!";
char outStr[BUFFERSIZE];

int main()
{
	mytoupper(tstStr, outStr);
	printf("Input: %s\nOutput: %s\n", tstStr, outStr);
	
	return(0);
}
