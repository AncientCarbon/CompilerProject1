/**
 * Base structure imported from lecture 3
 */
grammar impl;
start : OPERATION EOF;

OPERATION : '.' IDENTIFIER (' ' IDENTIFIER)? ;

IDENTIFIER : [a-zA-Z_] [a-zA-Z0-9_]*;

CONST : [0-9]+ ('.' [0-9]+)? ;

WHITESPACE : [ \t\n]+ -> skip ;
COMMENT : '//' ~[\n]* -> skip ;
MULTILINECOMMENTS :  '/*'  ( '*'~[/] | ~[*]  )* '*/' -> skip;