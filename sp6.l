/* lex program to match the following words: is , and , are , when */
%{
#include<stdio.h>
%}

%%
"is" |
"and" |
"are" |
"when" {printf("%s is the matched pattern",yytext);}
.* {printf("%s is not the matched pattern",yytext);}
%%

void main(){
	printf("Enter a string\n");
	int i = yylex();
}

int yywrap(){return 1;}
