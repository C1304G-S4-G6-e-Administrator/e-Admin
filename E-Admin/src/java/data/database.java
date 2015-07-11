/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package data;

import entity.Lab;
import entity.Report;
import entity.TimeTable;
import entity.User;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author DUNG
 */
public class database {

    public static Connection con = null;

    public static boolean checkLogin(String user, String pass) {

        boolean tmp = false;
        Statement stm = null;
        ResultSet rs = null;

        try {
            openConnec();
            stm = con.createStatement();
            rs = stm.executeQuery(" select * from Users where usr_username = '" + user + "' and usr_pass = '" + pass + "' ");
            tmp = rs.next();

        } catch (SQLException ex) {
            Logger.getLogger(database.class.getName()).log(Level.SEVERE, null, ex);
        } catch (Exception ex) {
            Logger.getLogger(database.class.getName()).log(Level.SEVERE, null, ex);
        }

        return tmp;

    }
    public int getTaskProcess(int id)
    {
         Statement stm = null;
        ResultSet rs = null;
        boolean tmp = false;
        int count = 0;
        try {

            stm = con.createStatement();
            rs = stm.executeQuery(" select * from Reports where techID = " + id + "and report_status="+1+"");

            while (rs.next()) {
                count = count+1;
            }
            rs.close();
        } catch (SQLException ex) {
            Logger.getLogger(database.class.getName()).log(Level.SEVERE, null, ex);
        }
        return count;
    }
    public Report getReportByID(int id)
{
      Statement stm = null;
        ResultSet rs = null;
        boolean tmp = false;
        Report report = null;
        try {

            stm = con.createStatement();
            rs = stm.executeQuery(" select * from Reports where report_id = '" + id + "' ");

            while (rs.next()) {
                int reportID = rs.getInt("report_id");
                int usr_id = rs.getInt("usr_id");
                int techID = rs.getInt("techID");
                int lab_id = rs.getInt("lab_id");
                int report_status = rs.getInt("report_status");
                String reportTitle=rs.getNString("report_title");
                String report_content=rs.getNString("report_content");
                String report_message=rs.getNString("report_message");
                java.sql.Date dateStart=rs.getDate("report_timere");
                java.sql.Date report_deadline=rs.getDate("report_deadline");
                report=new Report(reportID, usr_id, techID,lab_id, reportTitle, report_content, dateStart, report_status, report_deadline, report_message);
            }
            rs.close();
        } catch (SQLException ex) {
            Logger.getLogger(database.class.getName()).log(Level.SEVERE, null, ex);
        }
        return report;
}
public String getLabNameByID(int id)
{
      Statement stm = null;
        ResultSet rs = null;
        boolean tmp = false;
        String name = "";
        try {

            stm = con.createStatement();
            rs = stm.executeQuery(" select * from Labs where lab_id = '" + id + "' ");

            while (rs.next()) {
                name = rs.getNString("lab_name");
            }
            rs.close();
        } catch (SQLException ex) {
            Logger.getLogger(database.class.getName()).log(Level.SEVERE, null, ex);
        }
        return name;
}
    public String getNameByID(int id) {
        Statement stm = null;
        ResultSet rs = null;
        boolean tmp = false;
        String name = "";
        try {

            stm = con.createStatement();
            rs = stm.executeQuery(" select * from Users where usr_id = '" + id + "' ");

            while (rs.next()) {
                name = rs.getNString("usr_name");
            }
            rs.close();
        } catch (SQLException ex) {
            Logger.getLogger(database.class.getName()).log(Level.SEVERE, null, ex);
        }
        return name;
    }

    public static int getRole(String username) {
        Statement stm = null;
        ResultSet rs = null;
        boolean tmp = false;
        int role = 1;
        try {

            stm = con.createStatement();
            rs = stm.executeQuery(" select * from Users where usr_username = '" + username + "' ");

            while (rs.next()) {
                role = rs.getInt("usr_role");
            }
            rs.close();

        } catch (SQLException ex) {
            Logger.getLogger(database.class.getName()).log(Level.SEVERE, null, ex);
        }
        return role;
    }
public int getLabByName(String name)
{
    Statement stm = null;
        ResultSet rs = null;
        boolean tmp = false;
        int id = 0;
        try {

            stm = con.createStatement();
            rs = stm.executeQuery(" select * from Labs where lab_name = '" + name + "' ");

            while (rs.next()) {
                id = rs.getInt("lab_id");
            }
            rs.close();

        } catch (SQLException ex) {
            Logger.getLogger(database.class.getName()).log(Level.SEVERE, null, ex);
        }
        return id;
}

    public static User getUser(String username, String password) {
        Statement stm = null;
        ResultSet rs = null;
        boolean tmp = false;
        User user = null;
        try {

            stm = con.createStatement();
            rs = stm.executeQuery(" select * from Users where usr_username = '" + username + "' ");

            while (rs.next()) {
                int usr_id = rs.getInt("usr_id");
                String name = rs.getString("usr_name");
                int role = rs.getInt("usr_role");
                user = new User(usr_id, username, name, password, role);

            }
            rs.close();

        } catch (SQLException ex) {
            Logger.getLogger(database.class.getName()).log(Level.SEVERE, null, ex);
        }
        System.out.println(user.toString());
        return user;
    }
    public List<Lab> getLab() {
        List<Lab> list = new ArrayList<Lab>();
        Statement stm = null;
        ResultSet rs = null;
        boolean tmp = false;
        ;
        try {
            stm = con.createStatement();
            rs = stm.executeQuery(" select * from Labs");

            while (rs.next()) {
                int id = rs.getInt("lab_id");
                String name = rs.getNString("lab_name");
                int student = rs.getInt("lab_quantity_student");
                int com = rs.getInt("numOfCom");
               
                Lab lab = new Lab(id, name, student, com);
                list.add(lab);
            }
            rs.close();
        } catch (SQLException ex) {
            Logger.getLogger(database.class.getName()).log(Level.SEVERE, null, ex);
        }

        return list;
    }
    public TimeTable getTimeTable(int id) {
        TimeTable time=null;
        Statement stm = null;
        ResultSet rs = null;
        boolean tmp = false;
        
        try {
            stm = con.createStatement();
            rs = stm.executeQuery(" select * from TimeTable where time_tableID="+id);

            while (rs.next()) {
                int timeid = rs.getInt("time_tableID");                
                int labID = rs.getInt("lab_ID");
                int userID = rs.getInt("usr_id");
               int status = rs.getInt("sta");                
                int slot = rs.getInt("slot");
                Date date=rs.getDate("dat");
                 time = new TimeTable(timeid, labID, userID, status,date,slot);
                
            }
            rs.close();
        } catch (SQLException ex) {
            Logger.getLogger(database.class.getName()).log(Level.SEVERE, null, ex);
        }

        return time;
    }

    public int updateData(String sql) throws Exception {
        int kq = 0;
        openConnec();
        Statement sta = con.createStatement();
        kq = sta.executeUpdate(sql);
        closeConnect();
        return kq;
    }
   public boolean deleteUser(int id) throws SQLException {
        try {
            openConnec();
            CallableStatement cstmt = con.prepareCall("{call deleteUser(?)}");
            cstmt.setInt("usr_id", id);
            int rows = cstmt.executeUpdate();
            
            if (rows > 0) {
                return true;
            }
            
        } catch (Exception ex) {
            Logger.getLogger(database.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }
   public boolean deleteLab(int id) throws SQLException {
        try {
            openConnec();
            CallableStatement cstmt = con.prepareCall("{call deleteLab(?)}");
            cstmt.setInt("lab_id", id);
            int rows = cstmt.executeUpdate();
            
            if (rows > 0) {
                return true;
            }
            
        } catch (Exception ex) {
            Logger.getLogger(database.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }
    public ResultSet getData(String sql) throws Exception {
        ResultSet rs = null;
        openConnec();
        Statement sta = con.createStatement();
        rs = sta.executeQuery(sql);
        return rs;
    }

    public static void openConnec() throws Exception {
        if (con == null || con.isClosed()) {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            con = DriverManager.getConnection("jdbc:sqlserver://localhost;databaseName=DTB_Project_Sem4", "sa", "123456");
        }
    }

    public void closeConnect() throws Exception {
        if (con != null && !con.isClosed()) {
            con.close();
        }
    }

}
