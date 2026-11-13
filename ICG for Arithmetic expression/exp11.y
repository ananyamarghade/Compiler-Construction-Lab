%{
#include<stdio.h>
#include<stdlib.h>
int yylex();
void yyerror(char *s);
int t = 1;
%}
%token NUM ID
%left '+' '-'
%left '*' '/'

%%
S : E     {printf("Result: %d\n", $1);}
;

E : E '+' E   { $$ = $1 + $3;
		printf("t%d = %d + %d\n", t,$1,$3); t++;}
  | E '-' E   { $$ = $1 - $3;
  		printf("t%d = %d - %d\n", t,$1,$3); t++;}
  | E '*' E   { $$ = $1 * $3;
  		printf("t%d = %d * %d\n", t,$1,$3); t++;}
  | E '/' E   { $$ = $1 / $3;
  		printf("t%d = %d / %d\n", t,$1,$3); t++;}
  | NUM {$$ = $1;}
  | ID {$$ = $1;}
;

%%
void yyerror(char *s){
	printf("Invalid expression!\n");
}

int main()
{
    printf("Enter an expression: ");
    yyparse();
    return 0;
}
