%{
#include <stdio.h>
#include <stdlib.h>

int yylex();
void yyerror(char *s);
%}

%token NUMBER

%left '+'
%left '*'

%%

expr:
      expr '+' expr
      {
          $$ = $1 + $3;
      }

    | expr '*' expr
      {
          $$ = $1 * $3;
      }

    | NUMBER
      {
          $$ = $1;
      }
    ;

%%

void yyerror(char *s)
{
    printf("Error: %s\n", s);
}

int main()
{
    printf("Enter expression: ");
    yyparse();
    return 0;
}