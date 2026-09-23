%{
#include<stdio.h>
#include <stdlib.h>
int yylex(void);
int yyerror(char *s);
int yyparse(void);
%}

%token  NUM
%%
E:E'+'T|T;
T:T'*'F|F;
F:'('E')'|NUM;
%%

int yyerror(char *s){
	printf("INVALID Expression");
	exit(0);
}
int main(){
	printf("Enter an Expression: ");
	yyparse();
	printf("VALID Expression");
	return 0;
}
