%{
#include <stdio.h>
#include <stdlib.h>
%}

%%
^(https?:\/\/)?(www\.)?[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}(\/[a-zA-Z0-9._-]*)*$   { printf("Valid URL\n"); exit(0); }
\n                                                                          { /* Ignore newline */ }
.                                                                           { printf("Invalid URL\n"); exit(0); }
%%

int yywrap()
{
    return 1;
}

int main()
{
    printf("Enter a URL: ");
    yylex();
    return 0;
}