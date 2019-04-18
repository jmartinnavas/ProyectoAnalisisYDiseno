package Views;

import java.awt.*;
import javax.swing.*;
import javax.swing.table.*;

public class ColorearFilas extends DefaultTableCellRenderer {

    private final int columna_patron;

    public ColorearFilas(int Colpatron) {
        this.columna_patron = Colpatron;
    }

    @Override
    public Component getTableCellRendererComponent(JTable table, Object value, boolean Selected, boolean hasFocus, int row, int col) {
        Font font = new Font("Courier", Font.BOLD, 16);
//        switch (table.getValueAt(row, columna_patron).toString()) {
//            
//            case "Correcto":
//                setBackground(Color.GREEN);
//                //setForeground(Color.GREEN);
//                setFont(font);
//                break;
//            case "Incorrecto":
//                setBackground(Color.RED);
//                //setForeground(Color.RED);
//                setFont(font);
//                break;
//            default:
//                break;
//
//        }
        if (table.getValueAt(row, columna_patron).equals("Correcto")) {
            setBackground(Color.GREEN);
        } else if (table.getValueAt(row, columna_patron).equals("Incorrecto")) {
            setBackground(Color.RED);
        } else if (!table.getValueAt(row, columna_patron).equals("Correcto") || !table.getValueAt(row, columna_patron).equals("Incorrecto")) {
            setBackground(Color.BLACK);
        }
        super.getTableCellRendererComponent(table, value, Selected, hasFocus, row, col);
        return this;
    }

}
