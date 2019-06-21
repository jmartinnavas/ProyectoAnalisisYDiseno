/*-------------Codigo de Usuario---------------*/
//-------> Paquetes, importaciones:
package Models;
import java_cup.runtime.*;
import java.io.BufferedWriter;
import java.io.FileWriter;
import java.io.IOException;
import java.util.ArrayList;


/*-------------Opciones y Declaraciones-------------*/
%%
%{
//-----> Codigo de usuario en sintaxis java
public String showResult = "";
 
%}
//-----> Directivas

%public
%class  LexicalAnalyzer
%cupsym Symbols
%cup
%char
%column
%full
%ignorecase
%line
%unicode


///-----> Expresiones Regulares

digito = [0-9]
letra = [A-Za-z]
entero = {digito} {digito}*
decimal = {digito}+"."{digito}+
identificador = {letra}({letra}|{digito})*


%%
/*-------------Reglas Lexicas---------------*/

//-----------------> Simbolos
<YYINITIAL> "FUNCTION"  { System.out.println("Token correcto: "+yytext()+" function"); showResult += "Token correcto: " +yytext()+" Linea: " + (yyline+1) + " columna: "+ (yycolumn+1) + " \n"; return new Symbol(Symbols.function, yycolumn, yyline, yytext()); }
<YYINITIAL> "PROCEDURE" { System.out.println("Token correcto: "+yytext()+" procedure"); showResult += "Token correcto: " +yytext()+" Linea: " + (yyline+1) + " columna: "+ (yycolumn+1) + " \n"; return new Symbol(Symbols.procedure, yycolumn, yyline, yytext()); }
<YYINITIAL> "BOOLEAN"   { System.out.println("Token correcto: "+yytext()+" boolean_type"); showResult += "Token correcto: " +yytext()+" Linea: " + (yyline+1) + " columna: "+ (yycolumn+1) + " \n"; return new Symbol(Symbols.boolean_type, yycolumn, yyline, yytext()); }
<YYINITIAL> "INT"       { System.out.println("Token correcto: "+yytext()+" int"); showResult += "Token correcto: " +yytext()+" Linea: " + (yyline+1) + " columna: "+ (yycolumn+1) + " \n"; return new Symbol(Symbols.int_type, yycolumn, yyline, yytext()); }
<YYINITIAL> "FLOAT"     { System.out.println("Token correcto: "+yytext()+" float"); showResult += "Token correcto: " +yytext()+" Linea: " + (yyline+1) + " columna: "+ (yycolumn+1) + " \n"; return new Symbol(Symbols.float_type, yycolumn, yyline, yytext()); }
<YYINITIAL> "CHAR"      { System.out.println("Token correcto: "+yytext()+" char"); showResult += "Token correcto: " +yytext()+" Linea: " + (yyline+1) + " columna: "+ (yycolumn+1) + " \n"; return new Symbol(Symbols.char_type, yycolumn, yyline, yytext()); }
<YYINITIAL> "STRING"    { System.out.println("Token correcto: "+yytext()+" string"); showResult += "Token correcto: " +yytext()+" Linea: " + (yyline+1) + " columna: "+ (yycolumn+1) + " \n"; return new Symbol(Symbols.string_type, yycolumn, yyline, yytext()); }
//-----> <YYINITIAL> "RETURN"    { System.out.println("Token correcto: "+yytext()+" retorno"); showResult += "Token correcto: " +yytext()+" Linea: " + (yyline+1) + " columna: "+ (yycolumn+1) + " \n"; return new Symbol(Symbols.retorno, yycolumn, yyline, yytext()); }
//-----> <YYINITIAL> "TRUE"      { System.out.println("Token correcto: "+yytext()+" verdadero"); showResult += "Token correcto: " +yytext()+" Linea: " + (yyline+1) + " columna: "+ (yycolumn+1) + " \n"; return new Symbol(Symbols.verdadero , yycolumn, yyline, yytext()); }
//-----> <YYINITIAL> "FALSE"     { System.out.println("Token correcto: "+yytext()+" falso"); showResult += "Token correcto: " +yytext()+" Linea: " + (yyline+1) + " columna: "+ (yycolumn+1) + " \n"; return new Symbol(Symbols.falso, yycolumn, yyline, yytext()); }
<YYINITIAL> "IN"         { System.out.println("Token correcto: "+yytext()+" parametro_entrada"); showResult += "Token correcto: " +yytext()+" Linea: " + (yyline+1) + " columna: "+ (yycolumn+1) + " \n"; return new Symbol(Symbols.parametro_entrada, yycolumn, yyline, yytext()); }
<YYINITIAL> "OU"         { System.out.println("Token correcto: "+yytext()+" parametro_salida"); showResult += "Token correcto: " +yytext()+" Linea: " + (yyline+1) + " columna: "+ (yycolumn+1) + " \n"; return new Symbol(Symbols.parametro_salida, yycolumn, yyline, yytext()); }
<YYINITIAL> "IO"        { System.out.println("Token correcto: "+yytext()+" parametro_entada_salida"); showResult += "Token correcto: " +yytext()+" Linea: " + (yyline+1) + " columna: "+ (yycolumn+1) + " \n"; return new Symbol(Symbols.parametro_entada_salida, yycolumn, yyline, yytext()); }
<YYINITIAL> "FOR"       { System.out.println("Token correcto: "+yytext()+" ciclo_for"); showResult += "Token correcto: " +yytext()+" Linea: " + (yyline+1) + " columna: "+ (yycolumn+1) + " \n"; return new Symbol(Symbols.ciclo_for, yycolumn, yyline, yytext()); }
<YYINITIAL> "WHILE"     { System.out.println("Token correcto: "+yytext()+" ciclo_while"); showResult += "Token correcto: " +yytext()+" Linea: " + (yyline+1) + " columna: "+ (yycolumn+1) + " \n"; return new Symbol(Symbols.ciclo_while, yycolumn, yyline, yytext()); }
<YYINITIAL> "REPEAT"    { System.out.println("Token correcto: "+yytext()+" ciclo_repeat"); showResult += "Token correcto: " +yytext()+" Linea: " + (yyline+1) + " columna: "+ (yycolumn+1) + " \n"; return new Symbol(Symbols.ciclo_repeat, yycolumn, yyline, yytext()); }
<YYINITIAL> "IF"        { System.out.println("Token correcto: "+yytext()+" condicional_if"); showResult += "Token correcto: " +yytext()+" Linea: " + (yyline+1) + " columna: "+ (yycolumn+1) + " \n"; return new Symbol(Symbols.condicional_if, yycolumn, yyline, yytext()); }
<YYINITIAL> "SWITCH"    { System.out.println("Token correcto: "+yytext()+" condicional_switch"); showResult += "Token correcto: " +yytext()+" Linea: " + (yyline+1) + " columna: "+ (yycolumn+1) + " \n"; return new Symbol(Symbols.condicional_switch, yycolumn, yyline, yytext()); }
<YYINITIAL> "UNTIL"     { System.out.println("Token correcto: "+yytext()+" condicional_until"); showResult += "Token correcto: " +yytext()+" Linea: " + (yyline+1) + " columna: "+ (yycolumn+1) + " \n"; return new Symbol(Symbols.condicional_until, yycolumn, yyline, yytext()); }
<YYINITIAL> "THEN"      { System.out.println("Token correcto: "+yytext()+" then"); showResult += "Token correcto: " +yytext()+" Linea: " + (yyline+1) + " columna: "+ (yycolumn+1) + " \n"; return new Symbol(Symbols.then, yycolumn, yyline, yytext()); }
<YYINITIAL> "ELSE"      { System.out.println("Token correcto: "+yytext()+" else"); showResult += "Token correcto: " +yytext()+" Linea: " + (yyline+1) + " columna: "+ (yycolumn+1) + " \n"; return new Symbol(Symbols.sino, yycolumn, yyline, yytext()); }
<YYINITIAL> "END IF"    { System.out.println("Token correcto: "+yytext()+" end if"); showResult += "Token correcto: " +yytext()+" Linea: " + (yyline+1) + " columna: "+ (yycolumn+1) + " \n"; return new Symbol(Symbols.end_if, yycolumn, yyline, yytext()); }

<YYINITIAL> "CASE"  { System.out.println("Token correcto: "+yytext()+" end case"); showResult += "Token correcto: " +yytext()+" Linea: " + (yyline+1) + " columna: "+ (yycolumn+1) + " \n"; return new Symbol(Symbols.caso, yycolumn, yyline, yytext()); }
//-----> <YYINITIAL> "ARRAY"     { System.out.println("Token correcto: "+yytext()+" array"); showResult += "Token correcto: " +yytext()+" Linea: " + (yyline+1) + " columna: "+ (yycolumn+1) + " \n"; return new Symbol(Symbols.array , yycolumn, yyline, yytext()); }
//-----> <YYINITIAL> "LIST"      { System.out.println("Token correcto: "+yytext()+" list"); showResult += "Token correcto: " +yytext()+" Linea: " + (yyline+1) + " columna: "+ (yycolumn+1) + " \n"; return new Symbol(Symbols.list, yycolumn, yyline, yytext()); }
//-----> <YYINITIAL> "STACK"     { System.out.println("Token correcto: "+yytext()+" stack"); showResult += "Token correcto: " +yytext()+" Linea: " + (yyline+1) + " columna: "+ (yycolumn+1) + " \n"; return new Symbol(Symbols.stack, yycolumn, yyline, yytext()); }
//-----> <YYINITIAL> "QUEVE"     { System.out.println("Token correcto: "+yytext()+" queve"); showResult += "Token correcto: " +yytext()+" Linea: " + (yyline+1) + " columna: "+ (yycolumn+1) + " \n"; return new Symbol(Symbols.queve, yycolumn, yyline, yytext()); }
//-----> <YYINITIAL> "TREE"      { System.out.println("Token correcto: "+yytext()+" tree"); showResult += "Token correcto: " +yytext()+" Linea: " + (yyline+1) + " columna: "+ (yycolumn+1) + " \n"; return new Symbol(Symbols.tree, yycolumn, yyline, yytext()); }
//-----> <YYINITIAL> "GRAPH"     { System.out.println("Token correcto: "+yytext()+" graph"); showResult += "Token correcto: " +yytext()+" Linea: " + (yyline+1) + " columna: "+ (yycolumn+1) + " \n"; return new Symbol(Symbols.graph, yycolumn, yyline, yytext()); }
//-----> <YYINITIAL> "SET"       { System.out.println("Token correcto: "+yytext()+" set"); showResult += "Token correcto: " +yytext()+" Linea: " + (yyline+1) + " columna: "+ (yycolumn+1) + " \n"; return new Symbol(Symbols.set, yycolumn, yyline, yytext()); }
<YYINITIAL> "+"         { System.out.println("Token correcto: "+yytext()+" suma"); showResult += "Token correcto: " +yytext()+" Linea: " + (yyline+1) + " columna: "+ (yycolumn+1) + " \n"; return new Symbol(Symbols.suma, yycolumn, yyline, yytext()); }
<YYINITIAL> "-"         { System.out.println("Token correcto: "+yytext()+" resta"); showResult += "Token correcto: " +yytext()+" Linea: " + (yyline+1) + " columna: "+ (yycolumn+1) + " \n"; return new Symbol(Symbols.resta, yycolumn, yyline, yytext()); }
<YYINITIAL> "*"         { System.out.println("Token correcto: "+yytext()+" multiplicacion"); showResult += "Token correcto: " +yytext()+" Linea: " + (yyline+1) + " columna: "+ (yycolumn+1) + " \n"; return new Symbol(Symbols.multiplicacion, yycolumn, yyline, yytext()); }
<YYINITIAL> "/"         { System.out.println("Token correcto: "+yytext()+" division"); showResult += "Token correcto: " +yytext()+" Linea: " + (yyline+1) + " columna: "+ (yycolumn+1) + " \n"; return new Symbol(Symbols.division, yycolumn, yyline, yytext()); }
<YYINITIAL> "^"         { System.out.println("Token correcto: "+yytext()+" potencia"); showResult += "Token correcto: " +yytext()+" Linea: " + (yyline+1) + " columna: "+ (yycolumn+1) + " \n"; return new Symbol(Symbols.potencia, yycolumn, yyline, yytext()); }
<YYINITIAL> "<"         { System.out.println("Token correcto: "+yytext()+" menor"); showResult += "Token correcto: " +yytext()+" Linea: " + (yyline+1) + " columna: "+ (yycolumn+1) + " \n"; return new Symbol(Symbols.menor, yycolumn, yyline, yytext()); }
<YYINITIAL> ">"         { System.out.println("Token correcto: "+yytext()+" mayor"); showResult += "Token correcto: " +yytext()+" Linea: " + (yyline+1) + " columna: "+ (yycolumn+1) + " \n"; return new Symbol(Symbols.mayor, yycolumn, yyline, yytext()); }
<YYINITIAL> "=="         { System.out.println("Token correcto: "+yytext()+" comparacion"); showResult += "Token correcto: " +yytext()+" Linea: " + (yyline+1) + " columna: "+ (yycolumn+1) + " \n"; return new Symbol(Symbols.comparacion, yycolumn, yyline, yytext()); }
<YYINITIAL> "<="        { System.out.println("Token correcto: "+yytext()+" menor igual"); showResult += "Token correcto: " +yytext()+" Linea: " + (yyline+1) + " columna: "+ (yycolumn+1) + " \n"; return new Symbol(Symbols.menor_igual, yycolumn, yyline, yytext()); }
<YYINITIAL> ">="        { System.out.println("Token correcto: "+yytext()+" mayor igual"); showResult += "Token correcto: " +yytext()+" Linea: " + (yyline+1) + " columna: "+ (yycolumn+1) + " \n"; return new Symbol(Symbols.mayor_igual, yycolumn, yyline, yytext()); }
//-----> <YYINITIAL> "DIV"       { System.out.println("Token correcto: "+yytext()+" division entera"); showResult += "Token correcto: " +yytext()+" Linea: " + (yyline+1) + " columna: "+ (yycolumn+1) + " \n"; return new Symbol(Symbols.division, yycolumn, yyline, yytext()); }
<YYINITIAL> "MOD"       { System.out.println("Token correcto: "+yytext()+" modulo"); showResult += "Token correcto: " +yytext()+" Linea: " + (yyline+1) + " columna: "+ (yycolumn+1) + " \n"; return new Symbol(Symbols.modulo, yycolumn, yyline, yytext()); }
<YYINITIAL> "<>"        { System.out.println("Token correcto: "+yytext()+" diferente"); showResult += "Token correcto: " +yytext()+" Linea: " + (yyline+1) + " columna: "+ (yycolumn+1) + " \n"; return new Symbol(Symbols.diferente, yycolumn, yyline, yytext()); }
<YYINITIAL> "OR"        { System.out.println("Token correcto: "+yytext()+" o logico"); showResult += "Token correcto: " +yytext()+" Linea: " + (yyline+1) + " columna: "+ (yycolumn+1) + " \n"; return new Symbol(Symbols.or, yycolumn, yyline, yytext()); }
<YYINITIAL> "AND"       { System.out.println("Token correcto: "+yytext()+" y logico"); showResult += "Token correcto: " +yytext()+" Linea: " + (yyline+1) + " columna: "+ (yycolumn+1) + " \n"; return new Symbol(Symbols.and, yycolumn, yyline, yytext()); }
<YYINITIAL> "NOT"       { System.out.println("Token correcto: "+yytext()+" no logico"); showResult += "Token correcto: " +yytext()+" Linea: " + (yyline+1) + " columna: "+ (yycolumn+1) + " \n"; return new Symbol(Symbols.not, yycolumn, yyline, yytext()); }
//-----> <YYINITIAL> "%"         { System.out.println("Token correcto: "+yytext()+" comentario"); showResult += "Token correcto: " +yytext()+" Linea: " + (yyline+1) + " columna: "+ (yycolumn+1) + " \n"; return new Symbol(Symbols.comentario, yycolumn, yyline, yytext()); }
<YYINITIAL> "<-"        { System.out.println("Token correcto: "+yytext()+" asignacion"); showResult += "Token correcto: " +yytext()+" Linea: " + (yyline+1) + " columna: "+ (yycolumn+1) + " \n"; return new Symbol(Symbols.asignacion, yycolumn, yyline, yytext()); }
<YYINITIAL> "("         { System.out.println("Token correcto: "+yytext()+" parentesisabre"); showResult += "Token correcto: " +yytext()+" Linea: " + (yyline+1) + " columna: "+ (yycolumn+1) + " \n"; return new Symbol(Symbols.parentesis_abierto, yycolumn, yyline, yytext()); }
<YYINITIAL> ")"         { System.out.println("Token correcto: "+yytext()+" parentesiscierra"); showResult += "Token correcto: " +yytext()+" Linea: " + (yyline+1) + " columna: "+ (yycolumn+1) + " \n"; return new Symbol(Symbols.parentesis_cerrado, yycolumn, yyline, yytext()); }
<YYINITIAL> "{"         { System.out.println("Token correcto: "+yytext()+" llaveabre"); showResult += "Token correcto: " +yytext()+" Linea: " + (yyline+1) + " columna: "+ (yycolumn+1) + " \n"; return new Symbol(Symbols.llave_abierta, yycolumn, yyline, yytext()); }
<YYINITIAL> "}"         { System.out.println("Token correcto: "+yytext()+" llavecierra"); showResult += "Token correcto: " +yytext()+" Linea: " + (yyline+1) + " columna: "+ (yycolumn+1) + " \n"; return new Symbol(Symbols.llave_cerrada, yycolumn, yyline, yytext()); }
<YYINITIAL> "["         { System.out.println("Token correcto: "+yytext()+" corcheteabre"); showResult += "Token correcto: " +yytext()+" Linea: " + (yyline+1) + " columna: "+ (yycolumn+1) + " \n"; return new Symbol(Symbols.corchete_abierto, yycolumn, yyline, yytext()); }
<YYINITIAL> "]"         { System.out.println("Token correcto: "+yytext()+" corchetecierra"); showResult += "Token correcto: " +yytext()+" Linea: " + (yyline+1) + " columna: "+ (yycolumn+1) + " \n"; return new Symbol(Symbols.corchete_cerrado, yycolumn, yyline, yytext()); }
<YYINITIAL> ","         { System.out.println("Token correcto: "+yytext()+" coma"); showResult += "Token correcto: " +yytext()+" Linea: " + (yyline+1) + " columna: "+ (yycolumn+1) + " \n"; return new Symbol(Symbols.coma, yycolumn, yyline, yytext()); }
<YYINITIAL> "TO"        { System.out.println("Token correcto: "+yytext()+" hasta"); showResult += "Token correcto: " +yytext()+" Linea: " + (yyline+1) + " columna: "+ (yycolumn+1) + " \n"; return new Symbol(Symbols.hasta, yycolumn, yyline, yytext()); }
<YYINITIAL> "DO"        { System.out.println("Token correcto: "+yytext()+" hacer"); showResult += "Token correcto: " +yytext()+" Linea: " + (yyline+1) + " columna: "+ (yycolumn+1) + " \n"; return new Symbol(Symbols.hacer, yycolumn, yyline, yytext()); }
//-----> <YYINITIAL> "INC"       { System.out.println("Token correcto: "+yytext()+" incremento"); showResult += "Token correcto: " +yytext()+" Linea: " + (yyline+1) + " columna: "+ (yycolumn+1) + " \n"; return new Symbol(Symbols.incremento, yycolumn, yyline, yytext()); }
//-----> <YYINITIAL> "DEC"       { System.out.println("Token correcto: "+yytext()+" decremento"); showResult += "Token correcto: " +yytext()+" Linea: " + (yyline+1) + " columna: "+ (yycolumn+1) + " \n"; return new Symbol(Symbols.decremento, yycolumn, yyline, yytext()); }
//-----> <YYINITIAL> "DOWNTO"    { System.out.println("Token correcto: "+yytext()+" descenso"); showResult += "Token correcto: " +yytext()+" Linea: " + (yyline+1) + " columna: "+ (yycolumn+1) + " \n"; return new Symbol(Symbols.down_to, yycolumn, yyline, yytext()); }
<YYINITIAL> "PRINT"     { System.out.println("Token correcto: "+yytext()+" imprimir"); showResult += "Token correcto: " +yytext()+" Linea: " + (yyline+1) + " columna: "+ (yycolumn+1) + " \n"; return new Symbol(Symbols.imprimir, yycolumn, yyline, yytext()); }
<YYINITIAL> "<<"     { System.out.println("Token correcto: "+yytext()+" comilla_abierta"); showResult += "Token correcto: " +yytext()+" Linea: " + (yyline+1) + " columna: "+ (yycolumn+1) + " \n"; return new Symbol(Symbols.comilla_abierta, yycolumn, yyline, yytext()); }
<YYINITIAL> ">>"     { System.out.println("Token correcto: "+yytext()+" comilla_cerrada"); showResult += "Token correcto: " +yytext()+" Linea: " + (yyline+1) + " columna: "+ (yycolumn+1) + " \n"; return new Symbol(Symbols.comilla_cerrada, yycolumn, yyline, yytext()); }
<YYINITIAL> "END FOR"     { System.out.println("Token correcto: "+yytext()+" end for"); showResult += "Token correcto: " +yytext()+" Linea: " + (yyline+1) + " columna: "+ (yycolumn+1) + " \n"; return new Symbol(Symbols.end_for, yycolumn, yyline, yytext()); }
<YYINITIAL> "RETORNAR"     { System.out.println("Token correcto: "+yytext()+"retorno"); showResult += "Token correcto: " +yytext()+" Linea: " + (yyline+1) + " columna: "+ (yycolumn+1) + " \n"; return new Symbol(Symbols.retorno, yycolumn, yyline, yytext()); }
<YYINITIAL> "PRINCIPAL"     { System.out.println("Token correcto: "+yytext()+"principal"); showResult += "Token correcto: " +yytext()+" Linea: " + (yyline+1) + " columna: "+ (yycolumn+1) + " \n"; return new Symbol(Symbols.principal, yycolumn, yyline, yytext()); }

<YYINITIAL> ":"     { System.out.println("Token correcto: "+yytext()+"puntos"); showResult += "Token correcto: " +yytext()+" Linea: " + (yyline+1) + " columna: "+ (yycolumn+1) + " \n"; return new Symbol(Symbols.dos_puntos, yycolumn, yyline, yytext()); }
<YYINITIAL> "--"     { System.out.println("Token correcto: "+yytext()+"lambda"); showResult += "Token correcto: " +yytext()+" Linea: " + (yyline+1) + " columna: "+ (yycolumn+1) + " \n"; return new Symbol(Symbols.lambda, yycolumn, yyline, yytext()); }
<YYINITIAL> "END WHILE"     { System.out.println("Token correcto: "+yytext()+"end_while"); showResult += "Token correcto: " +yytext()+" Linea: " + (yyline+1) + " columna: "+ (yycolumn+1) + " \n"; return new Symbol(Symbols.end_while, yycolumn, yyline, yytext()); }
<YYINITIAL> "<<BKP>>"     { System.out.println("Token correcto: "+yytext()+"breakpoint"); showResult += "Token correcto: " +yytext()+" Linea: " + (yyline+1) + " columna: "+ (yycolumn+1) + " \n"; return new Symbol(Symbols.breakpoint, yycolumn, yyline, yytext()); }



//-----------------> Simbolos ER

<YYINITIAL> {digito}         { System.out.println("Token "+yytext()+" digito"); showResult += "Token correcto: " +yytext()+" Linea: " + (yyline+1) + " columna: "+ (yycolumn+1) + " \n"; return new Symbol(Symbols.digito, yycolumn, yyline, yytext()); }
<YYINITIAL> {letra}          { System.out.println("Token "+yytext()+" letra"); showResult += "Token correcto: " +yytext()+" Linea: " + (yyline+1) + " columna: "+ (yycolumn+1) + " \n"; return new Symbol(Symbols.letra, yycolumn, yyline, yytext()); }
<YYINITIAL> {entero}         { System.out.println("Token "+yytext()+" enero"); showResult += "Token correcto: " +yytext()+" Linea: " + (yyline+1) + " columna: "+ (yycolumn+1) + " \n"; return new Symbol(Symbols.entero, yycolumn, yyline, yytext()); }
<YYINITIAL> {decimal}        { System.out.println("Token "+yytext()+" numero"); showResult += "Token correcto: " +yytext()+" Linea: " + (yyline+1) + " columna: "+ (yycolumn+1) + " \n"; return new Symbol(Symbols.numero, yycolumn, yyline, yytext()); }
<YYINITIAL> {identificador}  { System.out.println("Token "+yytext()+" id"); showResult += "Token correcto: " +yytext()+" Linea: " + (yyline+1) + " columna: "+ (yycolumn+1) + " \n"; return new Symbol(Symbols.id, yycolumn, yyline, yytext()); }

//------> Espacios
[ \t\r\n\f]             {/* Espacios en blanco, se ignoran */}


//------> Errores Lexicos
.                       { System.out.println("\nError Lexico: "+yytext()+" Linea: "+yyline+" Columna: "+yycolumn); showResult += "\n Error Lexico: " + yytext() + " Linea: " + (yyline+1)  + " Columna: " + (yycolumn+1) + "\n";}


