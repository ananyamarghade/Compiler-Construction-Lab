NAME: ANANYA MARGHADE
PRN: 24070521004
SECTION: A
OCTOBER 8, 2026

%{
#include "y.tab.h"
%}

%%
"for"                    { return FOR; }
[A-Za-z_][A-Za-z0-9_]*   { return ID; }
[0-9]+                   { return NUM; }
"++"                     { return INC; }
"--"                     { return DEC;}
">="|"<="|"=="|"!="|">"|"<" { return RELOP; }
"="                      { return '='; }
"?"                      { return '?'; }
":"                      { return ':'; }
"("                      { return '('; }
")"                      { return ')'; }
";"                      { return ';'; }
[ \t\n]+                 ;
.                        { return yytext[0]; }
%%

int yywrap() { 
	return 1; 
	}
