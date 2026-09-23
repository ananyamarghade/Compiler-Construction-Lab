NAME: ANANYA MARGHADE
PRN: 24070521004
SECTION: A
BATCH: A1

%{
#include <stdio.h>
int c=0;
%}

%%
.*com$  {c++;}
.|\n    {}
%%

int main(){
printf("Enter the input:");
yylex();
printf("There are %d lines ending with com\n",c);
return 0;
}

int yywrap(){
return 1;
}
