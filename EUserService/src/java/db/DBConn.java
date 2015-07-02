/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author duc
 */
public class DBConn {
       public static Connection getConnection() throws SQLException {
        
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            String URL = "jdbc:sqlserver://localhost:1433;databaseName=DTB_Project_Sem4";
            Connection conn = DriverManager.getConnection(URL, "sa", "123456");

            return conn;
        } catch (ClassNotFoundException ex) {
            System.out.println("Error conn");
        } catch (SQLException ex) {
              System.out.println("Error conn");        
        }
        System.out.println("Error conn");        
        return null;
    }
}
