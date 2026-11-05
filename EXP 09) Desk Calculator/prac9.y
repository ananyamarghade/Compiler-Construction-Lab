%{
#include <stdio.h>

int yylex();
void yyerror(char *s);

int power(int base, int exp)
{
    int r = 1;
    for(int i = 0; i < exp; i++)
    {
        r = r * base;
    }
    return r;
}
%}

%token NUMBER
%token inc d

%left '+' '-'
%left '*' '/' '%'
%right '^'
%left inc
%left d

%%

stmt:
      stmt expr '\n' { printf("RESULT: %d\n", $2); }
    |
    ;

expr:
      NUMBER          { $$ = $1; }
    | expr '+' expr   { $$ = $1 + $3; }
    | expr '-' expr   { $$ = $1 - $3; }
    | expr '*' expr   { $$ = $1 * $3; }
    | expr '/' expr   {
			if ($3 == 0)
			{
			    yyerror("Division by zero");
			    $$ = 0;
			}
			else
			    $$ = $1 / $3;
		    	}

    | expr '%' expr   { 
			  if ($3 == 0)
			  {
			      yyerror("Modulo by zero");
			      $$ = 0;
			  }
			  else{
			      $$ = $1 % $3;
			  }
			  }
     
    | expr '^' expr   { $$ = power($1, $3); }
    | expr inc        { $$ = $1 + 1; }
    | expr d          { $$ = $1 - 1; }
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

