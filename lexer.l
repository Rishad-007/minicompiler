%{
#include "y.tab.h"
#include <stdio.h>
#include <stdlib.h>
%}

%%
"if"        return IF;
"else"      return ELSE;
"while"     return WHILE;
"for"       return FOR;
"print"     return PRINT;

"=="        return EQ;
"!="        return NE;
"<="        return LE;
">="        return GE;
"<"         return LT;
">"         return GT;

[0-9]+      { yylval.ival = atoi(yytext); return NUM; }
[a-zA-Z_][a-zA-Z0-9_]*   { return ID; }

"("         return '(';
")"         return ')';
"{"         return '{';
"}"         return '}';
";"         return ';';
"+"         return '+';
"-"         return '-';
"*"         return '*';
"/"         return '/';

[ \t\r\n]+  ;  // ignore whitespace

.           { printf("Unknown character: %s\n", yytext); }

%%

int yywrap() {
    return 1;
}
