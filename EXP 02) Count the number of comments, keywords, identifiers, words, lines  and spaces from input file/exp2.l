%{
#include<stdio.h>
int words = 0;
int iden =0;
int key = 0;
int spaces = 0;
int comments = 0;
int line = 0;
%}

%%
[ \t\n] {words++;}
"int"|"float"|"char"|"double"|"if"|"else"|"for"|"while"|"return|signed|unsigned|default|case|switch|struct|const" { key++; }
[A-Za-z_][A-Za-z0-9_]* { iden++; }
"//".* {comments++;}
[\n] {spaces++;}
.|\n
%%

int main(){
printf("Enter a String: ");
yylex();
printf("Words Count: %d\n",words);
printf("Identifiers Count: %d\n",iden);
printf("Keywords Count: %d\n",key);
return 0;
}

int yywrap(){
return 1;
}
