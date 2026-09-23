%{
#include<stdio.h>

void makeDec(char value[])
{
    int i, num = 0, digit, power = 1;

    for(i = 0; value[i] != '\0'; i++)
    {
        if(value[i] >= '0' && value[i] <= '9')
            digit = value[i] - '0';
        else
            digit = value[i] - 'A' + 10;

        num = num * 16 + digit;
    }

    printf("Decimal: %d", num);
}
%}

%%
[0-9A-F]+ { makeDec(yytext); }
. { putchar(yytext[0]); }
%%

int main()
{
    printf("Enter hexadecimal number: ");
    yylex();
    return 0;
}

int yywrap()
{
    return 1;
}
