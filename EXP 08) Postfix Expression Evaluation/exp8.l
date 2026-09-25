NAME: ANANYA MARGHADE
PRN: 24070521004
BATCH: A1
DATE: SEPTEMBER 24,2026

%{
#include <stdio.h>
#include <stdlib.h>
#include "y.tab.h"
%}

%%
[0-9]+      { yylval = atoi(yytext); return NUMBER; }
[-+*/^%]    { return yytext[0]; }
++        { return yytext[0]; }
[ \t]       { ; }
\n          { return '\n'; }
.           { printf("ERROR!"); }
%%

int yywrap()
{
    return 1;
}



