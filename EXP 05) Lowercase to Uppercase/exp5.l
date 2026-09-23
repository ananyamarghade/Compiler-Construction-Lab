%{
#include<stdio.h>
char changeCase(char a){
	char r;
	if (a >= 'A' && a <= 'Z') {
		r = a + 32;
	}	
	else{
		r = a - 32;
	}
	printf("The result is %c",r);
	}
%}

%%
[A-Za-z] {putchar(changeCase(yytext[0]));}
. {putchar(yytext[0]);}
%%

int main(){
	printf("Enter the character: ");
	yylex();
	return 0;
}	

 
int yywrap(){
 	return 1;
}

