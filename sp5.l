%{
#include<stdio.h>
#include<stdlib.h>
int i=0;
%}

%%
"\n" {i++;}
%%

void main(){
	yyin=fopen("sample5.txt","r");
	yylex();
	printf("\nNo. of lines: %d\n",i);
}

int yywrap(){return 1;}
