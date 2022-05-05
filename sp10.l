%{
#include<stdio.h>
#include"y.tab.h"
%}

%%
a {return A;}
b {return B;}
\n {return ENTER;}
.* {printf("invalid\n"); exit(0);}
%%

int yywrap(){return 1;}
