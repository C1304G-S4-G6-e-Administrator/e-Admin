/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package db;

import app.entity.Admin;
import app.entity.Lab;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author duc
 */
public class AdminDB {

    public List<Admin> getAllAdmins() {
        List<Admin> list = new ArrayList<Admin>();        
        try {
            Connection conn = DBConn.getConnection();            
            CallableStatement cstmt = conn.prepareCall("{call getAllAdmins()}");
            ResultSet rs1 = cstmt.executeQuery();            
            System.out.println(rs1.toString());
            while (rs1.next()) {
                int admin_id = rs1.getInt("admin_id");                
                String admin_username = rs1.getString("admin_username");
                String admin_name = rs1.getNString("admin_name");
                String password = rs1.getString("admin_pass");
                Admin admin = new Admin(admin_id, admin_name, admin_name, password);
                list.add(admin);                
            }
            rs1.close();
            conn.close();
        } catch (NullPointerException ex) {            
        } catch (Exception e) {
        }
        return list;
    }    
}
