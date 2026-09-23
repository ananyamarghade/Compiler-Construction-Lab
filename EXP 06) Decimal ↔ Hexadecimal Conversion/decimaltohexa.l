%{
#include<stdio.h>
void makeHex(char value[])
{
    int num = 0, rem, pos = 0;
    char o[20];
    for(int j = 0; value[j] != '\0'; j++)
    {
        num = num * 10 + value[j] - '0';
    }
    while(num > 0)
    {
        rem = num % 16;

        if(rem < 10)
        {
            o[pos] = rem + '0';
        }
        else
        {
            o[pos] = rem - 10 + 'A';
        }
        num = num / 16;
        pos++;
    }
    printf("Hexadecimal: ");
    while(pos > 0)
    {
        pos--;
        putchar(o[pos]);
    }
}
%}
%%
[0-9]+ { makeHex(yytext); }
. { putchar(yytext[0]); }
%%
int main()
{
    printf("Enter decimal number: ");
    yylex();
    return 0;
}
int yywrap()
{
    return 1;
}
