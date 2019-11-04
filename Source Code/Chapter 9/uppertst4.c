//
// C program to embed our Assembly
// toupper routine inline.
//

#include <stdio.h>

extern int mytoupper( char *, char * );

#define MAX_BUFFSIZE 255
int main()
{
	char *str = "This is a test.";
	char outBuf[MAX_BUFFSIZE];
	int len;

	asm
	(
		"MOV	R4, %2\n"
		"loop:	LDRB	R5, [%1], #1\n"
		"CMP	R5, #'z'\n"
		"BGT	cont\n"
		"CMP	R5, #'a'\n"
		"BLT	cont\n"
		"SUB	R5, #('a'-'A')\n"
		"cont:	STRB	R5, [%2], #1\n"
		"CMP	R5, #0\n"
		"BNE	loop\n"
		"SUB	%0, %2, R4\n"
		: "=r" (len)
		: "r" (str), "r" (outBuf)
		: "r4", "r5"
	);

	printf("Before str: %s\n", str);
	printf("After str: %s\n", outBuf);
	printf("Str len = %d\n", len);
	return(0);	
}
