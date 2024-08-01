%{
#include <stdio.h>
%}

%%
[a-zA-Z]+            { printf("WORD: %s\n", yytext); }
"<="                 { printf("RELATIONAL OPERATOR: %s\n", yytext); }
">="                 { printf("RELATIONAL OPERATOR: %s\n", yytext); }
"=="                 { printf("RELATIONAL OPERATOR: %s\n", yytext); }
"!="                 { printf("RELATIONAL OPERATOR: %s\n", yytext); }
"<"                  { printf("RELATIONAL OPERATOR: %s\n", yytext); }
">"                  { printf("RELATIONAL OPERATOR: %s\n", yytext); }
.                    { /* ignore other characters */ }

%%

int main() {
    yylex();
    return 0;
}

int yywrap() {
    return 1;
}
