/*Program to print "good bye" when you type hello*/
%{
	#include<stdio.h>
%}

%%
"hello" {printf("good bye");}
%%

void main()
{
	printf("Enter a string\n");
	yylex();
}

int yywrap()
{
	return 1;	
}
