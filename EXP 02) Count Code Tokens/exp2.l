%{
#include<stdio.h>

int words=0, keywords=0, identifiers=0;
int spaces=0, lines=0, comments=0;
%}

%%
"//".*                      { comments++; }

"int"|"float"|"char"|"double"|"if"|"else"|"for"|"while"|"return"|"break"|"case"|"char"|"const"|"continue"|"default"|"do"|"double"|"else"|"long"|"short"|"signed"|"sizeof"|"struct"|"switch"|"void"  { keywords++; words++; }

[A-Za-z_][A-Za-z0-9_]*      { identifiers++; words++; }
[0-9]+(\.[0-9]+)?   { words++; }
[ \t]                       { spaces++; }
\n                          { lines++; }
.           { }
%%

int main()
{
    printf("Enter the input:\n");
    yylex();

    printf("\nWords = %d", words);
    printf("\nKeywords = %d", keywords);
    printf("\nIdentifiers = %d", identifiers);
    printf("\nComments = %d", comments);
    printf("\nSpaces = %d", spaces);
    printf("\nLines = %d", lines + 1);

    return 0;
}

int yywrap()
{
    return 1;
}





