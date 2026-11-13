


%{
#include <stdio.h>
int yylex();
void yyerror(char *s);
%}

%token ID TYPE

%%
input: input stmt
     | stmt ;
     
stmt: TYPE ID ';'            { printf("Valid Statement!");}
    | TYPE ID f              { printf("Valid Statement!");}
    ;
 
f: ',' ID f
  |',' ID ';'
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
