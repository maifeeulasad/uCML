%{
	#include<stdio.h>

  	extern int yylex();
%}

%option noyywrap

%%

"int" 						{ printf(" Integer ");}
"float" 					{ printf(" Float ");}
"double" 					{ printf(" Double ");}
"string" 					{ printf(" String ");}
"return" 					{ printf(" Return ");}
"extern" 					{ printf(" Extern ");}
"if"	 					  { printf(" If ");}
"else" 						{ printf(" Else ");}
"for" 						{ printf(" For ");}
"in" 						  { printf(" In ");}
"to" 						  { printf(" To ");}
"by" 						  { printf(" By ");}
"def" 						{ printf(" Defination ");}
"=>" 						  { printf(" Arrow_Function ");}
"=" 						  { printf(" Set_value ");}
"==" 						  { printf(" Equals ");}
"!=" 						  { printf(" Not_equals ");}
">=" 						  { printf(" Getter_than ");}
"<=" 						  { printf(" Less_than ");}
"+" 						  { printf(" Plus ");}
"-" 						  { printf(" Minus ");}
"*" 						  { printf(" Multiply ");}
"/" 						  { printf(" Devide ");}
"," 						  { printf(" Comma ");}
[[:alpha:]][[:alnum:]]*		{ printf(" Variable");}
.							    { printf(" Illigal"); exit(1);	}


%%


int main(int argc, char** argv) 
{
  while (yylex());
}
