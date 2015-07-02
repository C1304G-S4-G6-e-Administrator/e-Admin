/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package db;

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
public class LabDB {

    public List<Lab> getAllLabs() {
        List<Lab> list = new ArrayList<Lab>();        
        try {
            Connection conn = DBConn.getConnection();            
           CallableStatement cstmt = conn.prepareCall("{call getAllLabs()}");
            ResultSet rs1 = cstmt.executeQuery();
            
            System.out.println(rs1.toString());
            while (rs1.next()) {
                int labID = rs1.getInt("lab_id");                
                String labName = rs1.getNString("lab_name");
                int labQuantityStudent = rs1.getInt("lab_quantity_student");
                int numOfCom = rs1.getInt("numOfCom");
                    
                Lab lab = new Lab(labID, labName, labQuantityStudent, numOfCom);
                list.add(lab);      
                System.out.println(list.size());
            }
            rs1.close();
            conn.close();
        } catch (NullPointerException ex) {            
        } catch (Exception e) {
        }
        return list;
    }

    public boolean insertLab(Lab l) {
        try {
            Connection conn = DBConn.getConnection();

            CallableStatement cstmt = conn.prepareCall("{call insertLab(?,?,?)}");
            
            cstmt.setNString("lab_name", l.getLabName());
            cstmt.setInt("lab_quantity_student", l.getLab_quantity_student());
            cstmt.setInt("numOfCom", l.getNumOfCom());

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

    public boolean updateLab(Lab l) {
        try {
            Connection conn = DBConn.getConnection();
            CallableStatement cstmt = conn.prepareCall("{call updateLab(?,?,?,?)}");
            cstmt.setInt("lab_id", l.getLabID());            
            cstmt.setNString("lab_name", l.getLabName());
            cstmt.setInt("lab_quantity_student", l.getLab_quantity_student());
            cstmt.setInt("numOfCom", l.getNumOfCom());
            int rows = cstmt.executeUpdate();
            if (rows > 0) {
                return true;
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    public boolean deleteLab(int id) throws SQLException {
        Connection conn = DBConn.getConnection();

        CallableStatement cstmt = conn.prepareCall("{call deleteLab(?)}");
        cstmt.setInt("lab_id", id);
        int rows = cstmt.executeUpdate();

        if (rows > 0) {
            return true;
        }
        return false;
    }
}
