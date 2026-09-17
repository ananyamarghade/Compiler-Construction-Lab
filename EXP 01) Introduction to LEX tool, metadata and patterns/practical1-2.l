%{
#include<stdio.h>
int comments = 0;
%}

%%
"//".* {comments++;}
.|\n
%%

int main(){
printf("Enter a String: ");
yylex();
printf("Comments Count: %d",comments);
return 0;
}

int yywrap(){
return 1;
}
