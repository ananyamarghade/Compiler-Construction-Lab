%{
#include <stdio.h>
#include <stdlib.h>
#include <math.h>

int yylex();
void yyerror(char *s);
%}

%token NUMBER

%%
stmt:
      stmt expr '\n' { printf("RESULT: %d\n", $2); }
    |
    ;

expr:
      NUMBER           { $$ = $1; }
    | expr expr '+'    { $$ = $1 + $2; }
    | expr expr '-'    { $$ = $1 - $2; }
    | expr expr '*'    { $$ = $1 * $2; }
    | expr expr '/'    { $$ = $1 / $2; }
    | expr expr '%'    { $$ = $1 % $2;}
    | expr '++'        { $$ = $1++ ;}
    | expr expr '^'    { $$ = (int)pow($1, $2); }
    ;

%%

void yyerror(char *s)
{
    printf("Error\n");
}

int main()
{
    yyparse();
    return 0;
}

