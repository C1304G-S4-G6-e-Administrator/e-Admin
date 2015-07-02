/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package db;

import app.entity.Lab;
import app.entity.Report;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.Date;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author duc
 */
public class ReportDB {

    public List<Report> getAllReports() {
        List<Report> list = new ArrayList<Report>();        
        try {
            Connection conn = DBConn.getConnection();            
            CallableStatement cstmt = conn.prepareCall("{call getAllReports()}");
            ResultSet rs1 = cstmt.executeQuery();            
            System.out.println(rs1.toString());
            while (rs1.next()) {
                int report_id = rs1.getInt("report_id");
                int usr_id = rs1.getInt("usr_id");
                int labID = rs1.getInt("lab_id");
                String report_title = rs1.getNString("report_title");
                String report_content = rs1.getNString("report_content");
                Date report_timere=rs1.getDate("report_timere");
                int report_status = rs1.getInt("report_status");
                

                Report report = new Report(report_id, usr_id, labID, report_title, report_content, report_timere, report_status);
                list.add(report);                
            }
            rs1.close();
            conn.close();
        } catch (NullPointerException ex) {            
        } catch (Exception e) {
        }
        return list;
    }

    public boolean insertReport(Report r) {
        try {
            Connection conn = DBConn.getConnection();

            CallableStatement cstmt = conn.prepareCall("{call insertReports(?,?,?,?,?,?)}");
            cstmt.setInt("usr_id", r.getUserID());
            cstmt.setInt("lab_id", r.getLabID());
            cstmt.setNString("report_title", r.getTitle());
            cstmt.setNString("report_content", r.getContent());
            cstmt.setDate("report_timere", r.getReportTime());
            cstmt.setInt("report_status", r.getStatus());

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

    public boolean updateReport(Report r) {
        try {
            Connection conn = DBConn.getConnection();
            CallableStatement cstmt = conn.prepareCall("{call updateReports(?,?,?,?,?,?,?)}");
            cstmt.setInt("report_id", r.getId());
            cstmt.setInt("usr_id", r.getUserID());
            cstmt.setInt("lab_id", r.getLabID());
            cstmt.setNString("report_title", r.getTitle());
            cstmt.setNString("report_content", r.getContent());
            cstmt.setDate("report_timere", r.getReportTime());
            cstmt.setInt("report_status", r.getStatus());
            int rows = cstmt.executeUpdate();
            if (rows > 0) {
                return true;
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    public boolean deleteReport(int id) throws SQLException {
        Connection conn = DBConn.getConnection();

        CallableStatement cstmt = conn.prepareCall("{call deleteReports(?)}");
        cstmt.setInt("report_id", id);
        int rows = cstmt.executeUpdate();

        if (rows > 0) {
            return true;
        }
        return false;
    }
}
