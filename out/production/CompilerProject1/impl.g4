/**
 * Imported from lecture 3
 */


grammar impl;
start : CONST EOF;

IDENTIFIER : [a-zA-Z_] [a-zA-Z0-9_]*;

CONST : [0-9]+ ('.' [0-9]+)? ;

WHITESPACE : [ \t\n]+ -> skip ;
COMMENT : '//' ~[\n]* -> skip ;
MULTILINECOMMENTS :  '/*'  ( '*'~[/] | ~[*]  )* '*/' -> skip;