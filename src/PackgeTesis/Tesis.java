/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package PackgeTesis;

import PackgeFormularios.frmLogin;
import PackgeFormularios.frmPresentacion;

/**
 *
 * @author djfrank48
 */
public class Tesis {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) throws InterruptedException {
        //Muestra el formulario frmPresentacion.
        frmPresentacion pre=new frmPresentacion();
        pre.setVisible(true);
        Thread.sleep(3000);        
        pre.setVisible(false);
        //Muestar el formulario frmLogin.
        frmLogin login=new frmLogin();
        login.setVisible(true);
        
        
    }    
    
}


