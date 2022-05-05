/*Count number of words in a file*/
%{
#include<stdio.h>
#include<stdlib.h>
int i = 0;
%}

%%
" "*"\n"* {i++;}
%%

void main(){
	yyin = fopen("sample8.txt","r");
	yylex();
	printf("No. of words: %d",i);
}

int yywrap(){
	return 1;
}
