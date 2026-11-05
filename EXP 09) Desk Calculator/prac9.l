%{
#include <stdio.h>
#include <stdlib.h>
#include "y.tab.h"
%}

%%
[0-9]+ {yylval = atoi(yytext); return NUMBER;}
"++"        { return inc;}
"--"        { return d;}
[+*/^%-]    { return yytext[0]; }
[ \t]       { ; }
\n          { return '\n'; }
.           { printf("ERROR!"); }
%%

int yywrap()
{
    return 1;
}
