Name: Ananya Marghade
PRN:  24070521004
Batch and Section: 2024-28 Section A
Date: July 09, 2028

%{
#include<stdio.h>
%}

%%
hello {printf("Found hello!");}
.|\n
%%

int main(){
printf("Enter a String: ");
yylex();
return 0;
}

int yywrap(){
return 1;
}
