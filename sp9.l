%{
#include<stdio.h>
%}

%%
[0-9]+ {printf("Number is positive");}
-[0-9]+ {printf("Number is negative");}
%%

void main(){
	printf("Enter a number");
	yylex();
}

int yywrap(){return 1;}
