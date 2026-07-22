%{
#include <stdio.h>
#include <stdlib.h>
%}

%%
[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,} {
    printf("Valid Email ID\n");
    exit(0);
}

. {
    printf("Invalid Email ID\n");
    exit(0);
}

\n ;
%%

int yywrap()
{
    return 1;
}

int main()
{
    printf("Enter an Email ID: ");
    yylex();
    return 0;
}