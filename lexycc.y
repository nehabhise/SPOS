%{
	#include<stdio.h>
	#include "y.tab.h"
%}
%token DTYPE ID SEMI COMMA
%%
stmtlist:stmtlist Decl
	|Decl
	;
Decl:DTYPE varlist SEMI		{printf("valid\n");}
varlist:ID|varlist COMMA ID	{printf("multi variable\n");}
%%
void main()
{
	extern FILE *yyin;
	yyin=fopen("file1.java","r");
	yyparse();
}
yyerror()
{

}
