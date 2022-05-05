/* Program to find special characters in a file */
%{
#include<stdio.h>
#include<stdlib.h>
int i=0;
%}

%%
[a-z | A-Z | 0-9] {;}
. {i++;}
%%

void main(){
	yyin=fopen("sample7.txt","r");
	yylex();
	printf("No. of special characters is %d",i);
}
int yywrap(){return 1;}
