
%{
#include <stdio.h>
int yylex(void);
int yyerror(const char *s);
%}

%token FOR ID NUM INC DEC RELOP

%%
input : stmt
      | input stmt
      ;

stmt  : FOR '(' ID '=' NUM ';'
        ID RELOP NUM ';' ID update ')'
        { printf("Valid for loop\n"); }
      | ID '?' ID ':' ID
        { printf("Valid ternary expression\n"); }
      | '(' ID ')' '?' '(' ID ')' ':' '(' ID ')'
        { printf("Valid ternary expression\n"); }
      | ID RELOP ID '?' '(' ID ')' ':' '(' ID ')'
        { printf("Valid ternary expression\n"); }
      | '(' ID RELOP ID ')' '?' ID ':' ID
        { printf("Valid ternary expression\n"); }
      ;

update : INC
       | DEC
       ;
%%

int main()
{
    printf("Enter statement(s):\n");
    yyparse();
    return 0;
}

int yyerror(const char *s)
{
    printf("Invalid statement\n");
    return 0;
}
