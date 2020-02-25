%{
  extern int yylex();
%}
%option noyywrap

WS	[ \t\n]+
ID    [a-z]
S1      "."{ID}+
S2    {ID}+.
T_DEF	"def"


%%

{T_DEF} {printf("DEF  found\n");}
{S1} {printf("s1 : %s\n",yytext);}
{S2} {printf("s2 : %s\n",yytext);}


%%
int main(int argc, char** argv) {
  while (yylex());
}
