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
<YYINITIAL> "PROCEDURE" { System.out.println("Token correcto: "+yytext()+" procedure"); showResult += "Token correcto: " +yytext()+" Linea: " + (yyline+1) + " columna: "+ (yycolumn+1) + " \n"; return new Symbol(Symbols.composicion, yycolumn, yyline, yytext()); }
<YYINITIAL> "BOOLEAN"   { System.out.println("Token correcto: "+yytext()+" boolean"); showResult += "Token correcto: " +yytext()+" Linea: " + (yyline+1) + " columna: "+ (yycolumn+1) + " \n"; return new Symbol(Symbols.puntoycoma, yycolumn, yyline, yytext()); }
<YYINITIAL> "INT"       { System.out.println("Token correcto: "+yytext()+" int"); showResult += "Token correcto: " +yytext()+" Linea: " + (yyline+1) + " columna: "+ (yycolumn+1) + " \n"; return new Symbol(Symbols.parentesiscierra, yycolumn, yyline, yytext()); }
<YYINITIAL> "FLOAT"     { System.out.println("Token correcto: "+yytext()+" float"); showResult += "Token correcto: " +yytext()+" Linea: " + (yyline+1) + " columna: "+ (yycolumn+1) + " \n"; return new Symbol(Symbols.parentesisabre, yycolumn, yyline, yytext()); }
<YYINITIAL> "CHAR"      { System.out.println("Token correcto: "+yytext()+" char"); showResult += "Token correcto: " +yytext()+" Linea: " + (yyline+1) + " columna: "+ (yycolumn+1) + " \n"; return new Symbol(Symbols.automatico, yycolumn, yyline, yytext()); }
<YYINITIAL> "STRING"    { System.out.println("Token correcto: "+yytext()+" string"); showResult += "Token correcto: " +yytext()+" Linea: " + (yyline+1) + " columna: "+ (yycolumn+1) + " \n"; return new Symbol(Symbols.parentesiscierra, yycolumn, yyline, yytext()); }
<YYINITIAL> "RETURN"    { System.out.println("Token correcto: "+yytext()+" return"); showResult += "Token correcto: " +yytext()+" Linea: " + (yyline+1) + " columna: "+ (yycolumn+1) + " \n"; return new Symbol(Symbols.t_cadena, yycolumn, yyline, yytext()); }
<YYINITIAL> "TRUE"      { System.out.println("Token correcto: "+yytext()+" true"); showResult += "Token correcto: " +yytext()+" Linea: " + (yyline+1) + " columna: "+ (yycolumn+1) + " \n"; return new Symbol(Symbols.t_boolean , yycolumn, yyline, yytext()); }
<YYINITIAL> "FALSE"     { System.out.println("Token correcto: "+yytext()+" false"); showResult += "Token correcto: " +yytext()+" Linea: " + (yyline+1) + " columna: "+ (yycolumn+1) + " \n"; return new Symbol(Symbols.object, yycolumn, yyline, yytext()); }
<YYINITIAL> "I"         { System.out.println("Token correcto: "+yytext()+" i"); showResult += "Token correcto: " +yytext()+" Linea: " + (yyline+1) + " columna: "+ (yycolumn+1) + " \n"; return new Symbol(Symbols.get, yycolumn, yyline, yytext()); }
<YYINITIAL> "O"         { System.out.println("Token correcto: "+yytext()+" o"); showResult += "Token correcto: " +yytext()+" Linea: " + (yyline+1) + " columna: "+ (yycolumn+1) + " \n"; return new Symbol(Symbols.set, yycolumn, yyline, yytext()); }
<YYINITIAL> "IO"        { System.out.println("Token correcto: "+yytext()+" io"); showResult += "Token correcto: " +yytext()+" Linea: " + (yyline+1) + " columna: "+ (yycolumn+1) + " \n"; return new Symbol(Symbols.t_numeric, yycolumn, yyline, yytext()); }
<YYINITIAL> "FOR"       { System.out.println("Token correcto: "+yytext()+" for"); showResult += "Token correcto: " +yytext()+" Linea: " + (yyline+1) + " columna: "+ (yycolumn+1) + " \n"; return new Symbol(Symbols.t_date, yycolumn, yyline, yytext()); }
<YYINITIAL> "WHILE"     { System.out.println("Token correcto: "+yytext()+" while"); showResult += "Token correcto: " +yytext()+" Linea: " + (yyline+1) + " columna: "+ (yycolumn+1) + " \n"; return new Symbol(Symbols.insertar, yycolumn, yyline, yytext()); }
<YYINITIAL> "REPEAT"    { System.out.println("Token correcto: "+yytext()+" repeat"); showResult += "Token correcto: " +yytext()+" Linea: " + (yyline+1) + " columna: "+ (yycolumn+1) + " \n"; return new Symbol(Symbols.valores, yycolumn, yyline, yytext()); }
<YYINITIAL> "IF"        { System.out.println("Token correcto: "+yytext()+" if"); showResult += "Token correcto: " +yytext()+" Linea: " + (yyline+1) + " columna: "+ (yycolumn+1) + " \n"; return new Symbol(Symbols.from, yycolumn, yyline, yytext()); }
<YYINITIAL> "SWITCH"    { System.out.println("Token correcto: "+yytext()+" switch"); showResult += "Token correcto: " +yytext()+" Linea: " + (yyline+1) + " columna: "+ (yycolumn+1) + " \n"; return new Symbol(Symbols.seleccionar, yycolumn, yyline, yytext()); }
<YYINITIAL> "UNTIL"     { System.out.println("Token correcto: "+yytext()+" until"); showResult += "Token correcto: " +yytext()+" Linea: " + (yyline+1) + " columna: "+ (yycolumn+1) + " \n"; return new Symbol(Symbols.herencia, yycolumn, yyline, yytext()); }
<YYINITIAL> "THEN"      { System.out.println("Token correcto: "+yytext()+" then"); showResult += "Token correcto: " +yytext()+" Linea: " + (yyline+1) + " columna: "+ (yycolumn+1) + " \n"; return new Symbol(Symbols.mayor, yycolumn, yyline, yytext()); }
<YYINITIAL> "ELSE"      { System.out.println("Token correcto: "+yytext()+" else"); showResult += "Token correcto: " +yytext()+" Linea: " + (yyline+1) + " columna: "+ (yycolumn+1) + " \n"; return new Symbol(Symbols.menor, yycolumn, yyline, yytext()); }
<YYINITIAL> "END IF"    { System.out.println("Token correcto: "+yytext()+" end if"); showResult += "Token correcto: " +yytext()+" Linea: " + (yyline+1) + " columna: "+ (yycolumn+1) + " \n"; return new Symbol(Symbols.igual, yycolumn, yyline, yytext()); }
<YYINITIAL> "CASE OF"   { System.out.println("Token correcto: "+yytext()+" case of"); showResult += "Token correcto: " +yytext()+" Linea: " + (yyline+1) + " columna: "+ (yycolumn+1) + " \n"; return new Symbol(Symbols.mayorigual, yycolumn, yyline, yytext()); }
<YYINITIAL> "END CASE"  { System.out.println("Token correcto: "+yytext()+" end case"); showResult += "Token correcto: " +yytext()+" Linea: " + (yyline+1) + " columna: "+ (yycolumn+1) + " \n"; return new Symbol(Symbols.menorigual, yycolumn, yyline, yytext()); }
<YYINITIAL> "ARRAY"     { System.out.println("Token correcto: "+yytext()+" array"); showResult += "Token correcto: " +yytext()+" Linea: " + (yyline+1) + " columna: "+ (yycolumn+1) + " \n"; return new Symbol(Symbols.asterisco, yycolumn, yyline, yytext()); }
<YYINITIAL> "LIST"      { System.out.println("Token correcto: "+yytext()+" list"); showResult += "Token correcto: " +yytext()+" Linea: " + (yyline+1) + " columna: "+ (yycolumn+1) + " \n"; return new Symbol(Symbols.re, yycolumn, yyline, yytext()); }
<YYINITIAL> "STACK"     { System.out.println("Token correcto: "+yytext()+" stack"); showResult += "Token correcto: " +yytext()+" Linea: " + (yyline+1) + " columna: "+ (yycolumn+1) + " \n"; return new Symbol(Symbols.falso, yycolumn, yyline, yytext()); }
<YYINITIAL> "QUEVE"     { System.out.println("Token correcto: "+yytext()+" queve"); showResult += "Token correcto: " +yytext()+" Linea: " + (yyline+1) + " columna: "+ (yycolumn+1) + " \n"; return new Symbol(Symbols.verdad, yycolumn, yyline, yytext()); }
<YYINITIAL> "TREE"      { System.out.println("Token correcto: "+yytext()+" tree"); showResult += "Token correcto: " +yytext()+" Linea: " + (yyline+1) + " columna: "+ (yycolumn+1) + " \n"; return new Symbol(Symbols.seleccionar, yycolumn, yyline, yytext()); }
<YYINITIAL> "GRAPH"     { System.out.println("Token correcto: "+yytext()+" graph"); showResult += "Token correcto: " +yytext()+" Linea: " + (yyline+1) + " columna: "+ (yycolumn+1) + " \n"; return new Symbol(Symbols.herencia, yycolumn, yyline, yytext()); }
<YYINITIAL> "SET"       { System.out.println("Token correcto: "+yytext()+" set"); showResult += "Token correcto: " +yytext()+" Linea: " + (yyline+1) + " columna: "+ (yycolumn+1) + " \n"; return new Symbol(Symbols.mayor, yycolumn, yyline, yytext()); }
<YYINITIAL> "+"         { System.out.println("Token correcto: "+yytext()+" suma"); showResult += "Token correcto: " +yytext()+" Linea: " + (yyline+1) + " columna: "+ (yycolumn+1) + " \n"; return new Symbol(Symbols.menor, yycolumn, yyline, yytext()); }
<YYINITIAL> "-"         { System.out.println("Token correcto: "+yytext()+" resta"); showResult += "Token correcto: " +yytext()+" Linea: " + (yyline+1) + " columna: "+ (yycolumn+1) + " \n"; return new Symbol(Symbols.igual, yycolumn, yyline, yytext()); }
<YYINITIAL> "*"         { System.out.println("Token correcto: "+yytext()+" multiplicacion"); showResult += "Token correcto: " +yytext()+" Linea: " + (yyline+1) + " columna: "+ (yycolumn+1) + " \n"; return new Symbol(Symbols.mayorigual, yycolumn, yyline, yytext()); }
<YYINITIAL> "/"         { System.out.println("Token correcto: "+yytext()+" division"); showResult += "Token correcto: " +yytext()+" Linea: " + (yyline+1) + " columna: "+ (yycolumn+1) + " \n"; return new Symbol(Symbols.menorigual, yycolumn, yyline, yytext()); }
<YYINITIAL> "^"         { System.out.println("Token correcto: "+yytext()+" potencia"); showResult += "Token correcto: " +yytext()+" Linea: " + (yyline+1) + " columna: "+ (yycolumn+1) + " \n"; return new Symbol(Symbols.asterisco, yycolumn, yyline, yytext()); }
<YYINITIAL> "<"         { System.out.println("Token correcto: "+yytext()+" menor"); showResult += "Token correcto: " +yytext()+" Linea: " + (yyline+1) + " columna: "+ (yycolumn+1) + " \n"; return new Symbol(Symbols.re, yycolumn, yyline, yytext()); }
<YYINITIAL> ">"         { System.out.println("Token correcto: "+yytext()+" mayor"); showResult += "Token correcto: " +yytext()+" Linea: " + (yyline+1) + " columna: "+ (yycolumn+1) + " \n"; return new Symbol(Symbols.falso, yycolumn, yyline, yytext()); }
<YYINITIAL> "="         { System.out.println("Token correcto: "+yytext()+" igual"); showResult += "Token correcto: " +yytext()+" Linea: " + (yyline+1) + " columna: "+ (yycolumn+1) + " \n"; return new Symbol(Symbols.verdad, yycolumn, yyline, yytext()); }
<YYINITIAL> "<="        { System.out.println("Token correcto: "+yytext()+" menor igual"); showResult += "Token correcto: " +yytext()+" Linea: " + (yyline+1) + " columna: "+ (yycolumn+1) + " \n"; return new Symbol(Symbols.seleccionar, yycolumn, yyline, yytext()); }
<YYINITIAL> ">="        { System.out.println("Token correcto: "+yytext()+" mayor igual"); showResult += "Token correcto: " +yytext()+" Linea: " + (yyline+1) + " columna: "+ (yycolumn+1) + " \n"; return new Symbol(Symbols.herencia, yycolumn, yyline, yytext()); }
<YYINITIAL> "DIV"       { System.out.println("Token correcto: "+yytext()+" division entera"); showResult += "Token correcto: " +yytext()+" Linea: " + (yyline+1) + " columna: "+ (yycolumn+1) + " \n"; return new Symbol(Symbols.mayor, yycolumn, yyline, yytext()); }
<YYINITIAL> "MOD"       { System.out.println("Token correcto: "+yytext()+" modulo"); showResult += "Token correcto: " +yytext()+" Linea: " + (yyline+1) + " columna: "+ (yycolumn+1) + " \n"; return new Symbol(Symbols.menor, yycolumn, yyline, yytext()); }
<YYINITIAL> "<>"        { System.out.println("Token correcto: "+yytext()+" diferente"); showResult += "Token correcto: " +yytext()+" Linea: " + (yyline+1) + " columna: "+ (yycolumn+1) + " \n"; return new Symbol(Symbols.igual, yycolumn, yyline, yytext()); }
<YYINITIAL> "OR"        { System.out.println("Token correcto: "+yytext()+" o logico"); showResult += "Token correcto: " +yytext()+" Linea: " + (yyline+1) + " columna: "+ (yycolumn+1) + " \n"; return new Symbol(Symbols.mayorigual, yycolumn, yyline, yytext()); }
<YYINITIAL> "AND"       { System.out.println("Token correcto: "+yytext()+" y logico"); showResult += "Token correcto: " +yytext()+" Linea: " + (yyline+1) + " columna: "+ (yycolumn+1) + " \n"; return new Symbol(Symbols.menorigual, yycolumn, yyline, yytext()); }
<YYINITIAL> "NOT"       { System.out.println("Token correcto: "+yytext()+" no logico"); showResult += "Token correcto: " +yytext()+" Linea: " + (yyline+1) + " columna: "+ (yycolumn+1) + " \n"; return new Symbol(Symbols.asterisco, yycolumn, yyline, yytext()); }
<YYINITIAL> "%"         { System.out.println("Token correcto: "+yytext()+" comentario"); showResult += "Token correcto: " +yytext()+" Linea: " + (yyline+1) + " columna: "+ (yycolumn+1) + " \n"; return new Symbol(Symbols.re, yycolumn, yyline, yytext()); }
<YYINITIAL> "<-"        { System.out.println("Token correcto: "+yytext()+" asignacion"); showResult += "Token correcto: " +yytext()+" Linea: " + (yyline+1) + " columna: "+ (yycolumn+1) + " \n"; return new Symbol(Symbols.falso, yycolumn, yyline, yytext()); }
<YYINITIAL> "("         { System.out.println("Token correcto: "+yytext()+" parentecisabre"); showResult += "Token correcto: " +yytext()+" Linea: " + (yyline+1) + " columna: "+ (yycolumn+1) + " \n"; return new Symbol(Symbols.verdad, yycolumn, yyline, yytext()); }
<YYINITIAL> ")"         { System.out.println("Token correcto: "+yytext()+" parenteciscierra"); showResult += "Token correcto: " +yytext()+" Linea: " + (yyline+1) + " columna: "+ (yycolumn+1) + " \n"; return new Symbol(Symbols.verdad, yycolumn, yyline, yytext()); }
<YYINITIAL> "{"         { System.out.println("Token correcto: "+yytext()+" llaveabre"); showResult += "Token correcto: " +yytext()+" Linea: " + (yyline+1) + " columna: "+ (yycolumn+1) + " \n"; return new Symbol(Symbols.verdad, yycolumn, yyline, yytext()); }
<YYINITIAL> "}"         { System.out.println("Token correcto: "+yytext()+" llavecierra"); showResult += "Token correcto: " +yytext()+" Linea: " + (yyline+1) + " columna: "+ (yycolumn+1) + " \n"; return new Symbol(Symbols.verdad, yycolumn, yyline, yytext()); }
<YYINITIAL> "["         { System.out.println("Token correcto: "+yytext()+" corcheteabre"); showResult += "Token correcto: " +yytext()+" Linea: " + (yyline+1) + " columna: "+ (yycolumn+1) + " \n"; return new Symbol(Symbols.verdad, yycolumn, yyline, yytext()); }
<YYINITIAL> "]"         { System.out.println("Token correcto: "+yytext()+" corchetecierra"); showResult += "Token correcto: " +yytext()+" Linea: " + (yyline+1) + " columna: "+ (yycolumn+1) + " \n"; return new Symbol(Symbols.verdad, yycolumn, yyline, yytext()); }
<YYINITIAL> ","         { System.out.println("Token correcto: "+yytext()+" coma"); showResult += "Token correcto: " +yytext()+" Linea: " + (yyline+1) + " columna: "+ (yycolumn+1) + " \n"; return new Symbol(Symbols.verdad, yycolumn, yyline, yytext()); }
<YYINITIAL> "TO"        { System.out.println("Token correcto: "+yytext()+" hasta"); showResult += "Token correcto: " +yytext()+" Linea: " + (yyline+1) + " columna: "+ (yycolumn+1) + " \n"; return new Symbol(Symbols.verdad, yycolumn, yyline, yytext()); }
<YYINITIAL> "DO"        { System.out.println("Token correcto: "+yytext()+" hacer"); showResult += "Token correcto: " +yytext()+" Linea: " + (yyline+1) + " columna: "+ (yycolumn+1) + " \n"; return new Symbol(Symbols.verdad, yycolumn, yyline, yytext()); }
<YYINITIAL> "INC"       { System.out.println("Token correcto: "+yytext()+" incremento"); showResult += "Token correcto: " +yytext()+" Linea: " + (yyline+1) + " columna: "+ (yycolumn+1) + " \n"; return new Symbol(Symbols.verdad, yycolumn, yyline, yytext()); }
<YYINITIAL> "DEC"       { System.out.println("Token correcto: "+yytext()+" decremento"); showResult += "Token correcto: " +yytext()+" Linea: " + (yyline+1) + " columna: "+ (yycolumn+1) + " \n"; return new Symbol(Symbols.verdad, yycolumn, yyline, yytext()); }
<YYINITIAL> "DOWNTO"    { System.out.println("Token correcto: "+yytext()+" descenso"); showResult += "Token correcto: " +yytext()+" Linea: " + (yyline+1) + " columna: "+ (yycolumn+1) + " \n"; return new Symbol(Symbols.verdad, yycolumn, yyline, yytext()); }
<YYINITIAL> "PRINT"     { System.out.println("Token correcto: "+yytext()+" imprimir"); showResult += "Token correcto: " +yytext()+" Linea: " + (yyline+1) + " columna: "+ (yycolumn+1) + " \n"; return new Symbol(Symbols.verdad, yycolumn, yyline, yytext()); }





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


