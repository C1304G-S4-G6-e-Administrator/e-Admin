/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package db;

import app.entity.Lab;
import app.entity.User;
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
public class UserDB {

    public List<User> getAllUsers() {
        List<User> list = new ArrayList<User>();        
        try {
            Connection conn = DBConn.getConnection();            
            CallableStatement cstmt = conn.prepareCall("{call getAllUsers()}");
            ResultSet rs1 = cstmt.executeQuery();            
            System.out.println(rs1.toString());
            while (rs1.next()) {
                int usr_id = rs1.getInt("usr_id");                
                String usr_username = rs1.getString("usr_username");
                String usr_name = rs1.getNString("usr_name");
                String usr_pass = rs1.getString("usr_pass");
                int usr_role = rs1.getInt("usr_role");
                

                User user = new User(usr_id, usr_username, usr_name, usr_pass, usr_role);
                list.add(user);                
            }
            rs1.close();
            conn.close();
        } catch (NullPointerException ex) {            
        } catch (Exception e) {
        }
        return list;
    }

    public boolean insertUser(User u) {
        try {
            Connection conn = DBConn.getConnection();

            CallableStatement cstmt = conn.prepareCall("{call insertUsers(?,?,?,?)}");
            
            cstmt.setString("usr_username", u.getUsername());
            cstmt.setNString("usr_name", u.getName());
            cstmt.setString("usr_pass", u.getPassword());
            cstmt.setInt("usr_role",u.getRole());
            

            int rows = cstmt.executeUpdate();
            if (rows > 0) {
                return true;
            }

        } catch (NullPointerException ex) {
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    public boolean updateUser(User u) {
        try {
            Connection conn = DBConn.getConnection();
            CallableStatement cstmt = conn.prepareCall("{call updateUsers(?,?,?,?,?)}");
            cstmt.setInt("usr_id",u.getUserID());
            cstmt.setString("usr_username", u.getUsername());
            cstmt.setNString("usr_name", u.getName());
            cstmt.setString("usr_pass", u.getPassword());
            cstmt.setInt("usr_role",u.getRole());
            int rows = cstmt.executeUpdate();
            if (rows > 0) {
                return true;
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    public boolean deleteUser(int id) throws SQLException {
        Connection conn = DBConn.getConnection();

        CallableStatement cstmt = conn.prepareCall("{call deleteUsers(?)}");
        cstmt.setInt("usr_id", id);
        int rows = cstmt.executeUpdate();

        if (rows > 0) {
            return true;
        }
        return false;
    }
}
