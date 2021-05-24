package PackgeConexionSQL;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import javax.swing.JOptionPane;

public class ConexionMySQL {

    public Connection conexion;
    public Statement sentencia;
    public ResultSet resultado;

    public void ConectarBasedeDatos() {
        try {
            final String Controlador = "com.mysql.jdbc.Driver";
            Class.forName(Controlador);
            final String url_bd = "jdbc:mysql://localhost:3306/DBtesis";
            conexion = DriverManager.getConnection(url_bd, "root", "");
            sentencia = conexion.createStatement();
        } catch (ClassNotFoundException | SQLException ex) {
            JOptionPane.showMessageDialog(null, ex.getMessage(), "Error ", JOptionPane.ERROR_MESSAGE);
        }
    }

    public void DesconectarBasedeDatos() {
        try {
            if (conexion != null) {
                if (sentencia != null) {
                    sentencia.close();
                }
                conexion.close();
            }
        } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null, ex.getMessage(), "Error", JOptionPane.ERROR_MESSAGE);
            System.exit(1);
        }
    }    
    
    Connection  conectar=null;
public Connection conexion(){
    
    try {
        Class.forName("com.mysql.jdbc.Driver");
        conectar=(Connection) DriverManager.getConnection("jdbc:mysql://localhost/DBtesis","root","");
        //JOptionPane.showMessageDialog(null, "Conexion Exitosa");
        
    } catch (Exception e) {
        JOptionPane.showMessageDialog(null, "Error Conexion"+e.getMessage());
    }
    
    return conectar;
}

    public Connection getConnection() {
        return conexion;
    }
}