/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package biblioclg;

import java.sql.*;
import oracle.jdbc.pool.*;

/**
 *
 * @author Francis
 */
public class BiblioClg {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
       
        
//        User userForm = new User();
//        userForm.setVisible(true);
//        ConsultationLivre clivre = new ConsultationLivre();
//        clivre.setVisible(true);
//        Classement cls = new Classement();
//        cls.setVisible(true);
        Home hme = new Home();
        hme.setVisible(true);
        
        // TODO code application logic here
    }
    public static Connection MakeConnection()
    {
        String url = "jdbc:oracle:thin:@mercure.clg.qc.ca:1521:orcl";
        String user ="lemairef";
        String mapasse = "ORACLE1";
        Connection conn = null;
        try {
            OracleDataSource ods = new OracleDataSource();
            ods.setURL(url);
            ods.setUser(user);
            ods.setPassword(mapasse);
            conn = ods.getConnection();
            System.out.println("vous etes connectés ");
        }
        catch(SQLException sqlods)
        {
            System.out.println("connexion impossible");
            System.exit(0);
        }
        return conn;
    }
    
}
