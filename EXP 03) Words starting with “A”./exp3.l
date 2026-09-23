NAME:ANANYA MARGHADE
PRN:24070521004
SECTION: A (BATCH A1)
DATE: JULY 30, 2026

%{
#include<stdio.h>
int num = 0, a=0;
%}
%%
[Aa][A-Za-z0-9]* {a++;}
[0-9]+[eE]?[-+]?[\.[0-9]+]? {num++;}
.|\n
%%

int main(){
printf("Input: ");
yylex();
printf("Number of a: %d\n", a);
printf("Numbers count: %d\n", num);
return 0;
}

 
int yywrap(){
  return 1;
}
