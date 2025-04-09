%{
#include <stdio.h>
#include <stdlib.h>

extern FILE *yyin;
int yylex();
void yyerror(const char *s) {
    printf("Error: %s\n", s);
}
%}

%union {
    int ival;
}

%token <ival> NUM
%token IF ELSE WHILE FOR PRINT ID
%token EQ NE LE GE LT GT

%type <ival> expr

// Precedence and associativity
%left '+' '-'
%left '*' '/'
%nonassoc LOWER_THAN_ELSE
%nonassoc ELSE

%%

program:
    program statement
    | statement
    ;

statement:
    PRINT expr ';'          { printf("Print: %d\n", $2); }
    | IF '(' expr ')' statement %prec LOWER_THAN_ELSE
    | IF '(' expr ')' statement ELSE statement
    | WHILE '(' expr ')' statement
    | FOR '(' expr ';' expr ';' expr ')' statement
    | block
    ;

block:
    '{' program '}'
    ;

expr:
    expr '+' expr   { $$ = $1 + $3; }
    | expr '-' expr { $$ = $1 - $3; }
    | expr '*' expr { $$ = $1 * $3; }
    | expr '/' expr {
        if ($3 == 0) {
            printf("Division by zero error\n");
            $$ = 0;
        } else {
            $$ = $1 / $3;
        }
    }
    | '(' expr ')'  { $$ = $2; }
    | NUM           { $$ = $1; }
    ;

%%

int main() {
    FILE *fp = fopen("input.c", "r");
    if (!fp) {
        perror("Failed to open input.c");
        return 1;
    }
    yyin = fp;
    yyparse();
    fclose(fp);
    return 0;
}
