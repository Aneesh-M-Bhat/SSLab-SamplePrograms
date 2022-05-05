%{
#include<stdio.h>
#include<stdlib.h>
int yylex();
int yyerror();
%}
%token A B ENTER
%%
input: S ENTER { printf("accepted\n");}
S:A|B
;
%%
void main(){
	printf("Enter the character\n");
	yyparse();
}
int yyerror(){return 1;}

