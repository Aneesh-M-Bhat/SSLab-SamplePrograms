/*Program to print "good bye" if hello is there otherwise wrong input*/
%{
#include<stdio.h>
%}

%%
"hello" {printf("good bye");}
.* {printf("wrong input");}
%%

void main(){
	printf("Enter a string\n");
	yylex();
}

int yywrap(){return 1;}
