/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Views;

import Models.LexicalAnalyzer;
import Models.*;
import java.io.BufferedReader;
import java.io.StringReader;

/**
 *
 * @author darkd
 */
public class Test {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        String datos = "function boolean esRecursivo() \n" +
"	boolean bandera <- false\n" +
"{\n" +
"	for ( i <- 0 to n ) do\n" +
"		if (  (i >= 5)    ) then \n" +
"		bandera <- true\n" +
"		end if --\n" +
"	end for --\n" +
"	\n" +
"	retorno bandera \n" +
"}";
        LexicalAnalyzer lexico = new LexicalAnalyzer(new BufferedReader(new StringReader(datos)));
        SyntacticAnalyzer sintactico = new SyntacticAnalyzer(lexico);

        try {
            sintactico.parse();
            System.out.println(lexico.showResult);
            System.out.println(sintactico.result);
            // System.out.println(sintactico.resultado);
        } catch (Exception e) {
        }

    }

}
