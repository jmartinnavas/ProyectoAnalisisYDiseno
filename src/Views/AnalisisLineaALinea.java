/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Views;

import java.awt.Color;
import java.awt.HeadlessException;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.JButton;
import javax.swing.JLabel;
import javax.swing.JOptionPane;
import javax.swing.JScrollPane;
import javax.swing.JTextArea;
import javax.swing.text.BadLocationException;
import javax.swing.text.DefaultHighlighter;
import javax.swing.text.Highlighter;

/**
 *
 * @author JMartinNavas
 */
public class AnalisisLineaALinea extends javax.swing.JFrame {

    LinkedHashMap<String, String> mapa = new LinkedHashMap<>();
    LinkedList<String> respuestas = new LinkedList<>();

    private Highlighter.HighlightPainter painter;

    /**
     * Creates new form AnalisisLineaALinea
     */
    public AnalisisLineaALinea() {
        initComponents();
    }

    public AnalisisLineaALinea(LinkedHashMap<String, String> mapa, LinkedList<String> respuestas) {
        this.mapa = mapa;
        this.respuestas = respuestas;
        initComponents();
        tip1.setToolTipText(""
                + "<html>"
                + "<head>"
                + ""
                + "</head>"
                + "<body>"
                + "<h2>El costo de la cabecera es despreciable, al igual que las llaves y los end</h2>"
                + "</body>"
                + "</html>"
                + "");
        tip2.setToolTipText(""
                + "<html>"
                + "<head>"
                + ""
                + "</head>"
                + "<body>"
                + "<h2>declaraciones y asignaciones que esten fuera de ciclos tiene costo constante</h2>"
                + "</body>"
                + "</html>"
                + "");
        
        tip3.setToolTipText(""
                + "<html>"
                + "<head>"
                + ""
                + "</head>"
                + "<body>"
                + "<h2>ciclos sencillos y ciclos anidados tienen costos que dependen de la cantidad de iteraciones que hacen</h2>"
                + "</body>"
                + "</html>"
                + "");
    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jScrollPane1 = new javax.swing.JScrollPane();
        tarea = new javax.swing.JTextArea();
        jLabel1 = new javax.swing.JLabel();
        btnarrancar = new javax.swing.JButton();
        textocosto = new javax.swing.JTextField();
        btnverificar = new javax.swing.JButton();
        jButton2 = new javax.swing.JButton();
        jLabel2 = new javax.swing.JLabel();
        jLabel3 = new javax.swing.JLabel();
        tip1 = new javax.swing.JButton();
        tip2 = new javax.swing.JButton();
        tip3 = new javax.swing.JButton();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);
        setBackground(new java.awt.Color(102, 102, 255));

        tarea.setColumns(20);
        tarea.setRows(5);
        jScrollPane1.setViewportView(tarea);

        jLabel1.setText("Pseudocodigo");

        btnarrancar.setText("Arrancar");
        btnarrancar.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnarrancarActionPerformed(evt);
            }
        });

        btnverificar.setText("Verificar");
        btnverificar.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnverificarActionPerformed(evt);
            }
        });

        jButton2.setText("Salir");
        jButton2.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton2ActionPerformed(evt);
            }
        });

        jLabel2.setText("Costo de la Linea seleccionada:");

        jLabel3.setText("TIPS:");

        tip1.setText("1");

        tip2.setText("2");

        tip3.setText("3");

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addGap(180, 180, 180)
                .addComponent(jLabel1)
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
            .addGroup(layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(jScrollPane1, javax.swing.GroupLayout.PREFERRED_SIZE, 431, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, layout.createSequentialGroup()
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                        .addComponent(btnarrancar)
                        .addGap(154, 154, 154))
                    .addGroup(layout.createSequentialGroup()
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, layout.createSequentialGroup()
                                .addComponent(jLabel2)
                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                                .addComponent(textocosto, javax.swing.GroupLayout.PREFERRED_SIZE, 85, javax.swing.GroupLayout.PREFERRED_SIZE)
                                .addGap(18, 18, 18)
                                .addComponent(btnverificar)
                                .addContainerGap())
                            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, layout.createSequentialGroup()
                                .addGap(0, 0, Short.MAX_VALUE)
                                .addComponent(jButton2)
                                .addGap(25, 25, 25))
                            .addGroup(layout.createSequentialGroup()
                                .addComponent(jLabel3)
                                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                            .addGroup(layout.createSequentialGroup()
                                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                    .addComponent(tip2)
                                    .addComponent(tip1)
                                    .addComponent(tip3))
                                .addGap(0, 0, Short.MAX_VALUE))))))
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addGap(16, 16, 16)
                .addComponent(jLabel1)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(layout.createSequentialGroup()
                        .addComponent(jScrollPane1, javax.swing.GroupLayout.PREFERRED_SIZE, 441, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(0, 21, Short.MAX_VALUE))
                    .addGroup(layout.createSequentialGroup()
                        .addComponent(btnarrancar)
                        .addGap(27, 27, 27)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                            .addComponent(textocosto, javax.swing.GroupLayout.PREFERRED_SIZE, 26, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(btnverificar)
                            .addComponent(jLabel2))
                        .addGap(42, 42, 42)
                        .addComponent(jLabel3)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                        .addComponent(tip1)
                        .addGap(18, 18, 18)
                        .addComponent(tip2)
                        .addGap(18, 18, 18)
                        .addComponent(tip3)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                        .addComponent(jButton2)))
                .addContainerGap())
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents
    int startIndex = 0;
    int endIndex = 0;

    private void btnarrancarActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnarrancarActionPerformed
        // TODO add your handling code here:

        try {
            startIndex = tarea.getLineStartOffset(linea);
            endIndex = tarea.getLineEndOffset(linea);
        } catch (BadLocationException ex) {
            Logger.getLogger(AnalisisLineaALinea.class.getName()).log(Level.SEVERE, null, ex);
        }

        painter = new DefaultHighlighter.DefaultHighlightPainter(Color.GREEN);
        try {
            tarea.getHighlighter().addHighlight(startIndex, endIndex, painter);
        } catch (BadLocationException ex) {
            Logger.getLogger(AnalisisLineaALinea.class.getName()).log(Level.SEVERE, null, ex);
        }
        btnarrancar.setEnabled(false);
    }//GEN-LAST:event_btnarrancarActionPerformed

    private void jButton2ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton2ActionPerformed
        // TODO add your handling code here:
        this.setEnabled(false);
        this.setVisible(false);

        System.out.println(tarea.getText());
        System.out.println("----------DATOS DESDE EL FRAME ANALISISLINEAALINEA---------");
        System.out.println("respuestas:");
        System.out.println(respuestas);

        System.out.println("mapa:");
        for (String key : mapa.keySet()) {
            String value = mapa.get(key);
            System.out.println("Key = " + key + ", Value = " + value);
        }
    }//GEN-LAST:event_jButton2ActionPerformed

    int linea = 0;

    private void btnverificarActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnverificarActionPerformed

        if (textocosto.getText().equals(respuestas.get(linea))) {
            JOptionPane.showMessageDialog(this, "Respuesta Correcta :)");
            linea++;
            tarea.getHighlighter().removeAllHighlights();
            try {
                startIndex = tarea.getLineStartOffset(linea);
                endIndex = tarea.getLineEndOffset(linea);
            } catch (BadLocationException ex) {
                Logger.getLogger(AnalisisLineaALinea.class.getName()).log(Level.SEVERE, null, ex);
            }
            painter = new DefaultHighlighter.DefaultHighlightPainter(Color.GREEN);

            try {
                tarea.getHighlighter().addHighlight(startIndex, endIndex, painter);
            } catch (BadLocationException ex) {
                Logger.getLogger(AnalisisLineaALinea.class.getName()).log(Level.SEVERE, null, ex);
            }
            textocosto.setText("");

        } else {
            JOptionPane.showMessageDialog(this, "Respuesta Incorrecta :(");
        }

        if (linea == respuestas.size()) {
            JOptionPane.showMessageDialog(this, "¡ Reto terminado ! ");

        }

    }//GEN-LAST:event_btnverificarActionPerformed

    /**
     * @param args the command line arguments
     */
    public static void main(String args[]) {
        /* Set the Nimbus look and feel */
        //<editor-fold defaultstate="collapsed" desc=" Look and feel setting code (optional) ">
        /* If Nimbus (introduced in Java SE 6) is not available, stay with the default look and feel.
         * For details see http://download.oracle.com/javase/tutorial/uiswing/lookandfeel/plaf.html 
         */
        try {
            for (javax.swing.UIManager.LookAndFeelInfo info : javax.swing.UIManager.getInstalledLookAndFeels()) {
                if ("Nimbus".equals(info.getName())) {
                    javax.swing.UIManager.setLookAndFeel(info.getClassName());
                    break;
                }
            }
        } catch (ClassNotFoundException ex) {
            java.util.logging.Logger.getLogger(AnalisisLineaALinea.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(AnalisisLineaALinea.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(AnalisisLineaALinea.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(AnalisisLineaALinea.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new AnalisisLineaALinea().setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton btnarrancar;
    private javax.swing.JButton btnverificar;
    private javax.swing.JButton jButton2;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JScrollPane jScrollPane1;
    public javax.swing.JTextArea tarea;
    private javax.swing.JTextField textocosto;
    private javax.swing.JButton tip1;
    private javax.swing.JButton tip2;
    private javax.swing.JButton tip3;
    // End of variables declaration//GEN-END:variables
}
