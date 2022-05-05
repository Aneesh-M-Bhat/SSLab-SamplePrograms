/* Program to recognize names & action */
%{
#include<stdio.h>
%}

%%
"Aneesh" |
"Divyatej" |
"Karthik" {printf("Noun");}
"Wave" |
"Dance" |
"Sleep" {printf("Verb");}
%%

void main(){
	printf("Enter a string\n");
	yylex();
}

int yywrap(){return 1;}
