%{
#include <stdio.h>
#include <stdlib.h>
%}

%%
[0-9]      { printf("It is a Digit\n"); exit(0); }
[a-zA-Z]   { printf("It is Not a Digit\n"); exit(0); }
.          { printf("It is Not a Digit\n"); exit(0); }
%%

int yywrap()
{
    return 1;
}

int main()
{
    printf("Enter a character: ");
    yylex();
    return 0;
}