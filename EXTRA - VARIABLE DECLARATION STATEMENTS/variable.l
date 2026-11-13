%{
#include <stdio.h>
#include <stdlib.h>
#include "y.tab.h"
%}

%%
"int"|"char"           { return TYPE;}
";"            	       { return ';' ;}
[A-Za-z_][A-Za-z0-9_]* { return ID;}
","                    { return ',' ;}
"{"                    { return '{' ;}
"}"                    { return '}' ;}
%%

int yywrap()
{
    return 1;
}
