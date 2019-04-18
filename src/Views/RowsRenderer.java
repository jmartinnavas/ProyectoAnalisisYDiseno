/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Views;

import java.awt.Color;
import java.awt.Component;
import javax.swing.JTable;
import javax.swing.table.DefaultTableCellRenderer;

/**
 *
 * @author JMartinNavas
 */
public class RowsRenderer extends DefaultTableCellRenderer {

    private int columna;

   

    @Override
    public Component getTableCellRendererComponent(JTable table, Object value, boolean selected, boolean focused, int row, int column) {
        
        super.getTableCellRendererComponent(table, value, selected, focused, row, column);
        if ((row % 2 == 0) && (table.getValueAt(row,columna) != null )) {
            this.setForeground(Color.RED);
        } else  {
            this.setForeground(Color.BLUE);
        } 
        return this;
    }
}
