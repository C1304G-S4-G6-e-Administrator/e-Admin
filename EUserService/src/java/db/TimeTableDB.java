/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package db;

import app.entity.Lab;
import app.entity.TimeTable;
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
public class TimeTableDB {

    public List<TimeTable> getAllTimeTables() {
        List<TimeTable> list = new ArrayList<TimeTable>();
        try {
            Connection conn = DBConn.getConnection();
            CallableStatement cstmt = conn.prepareCall("{call getAllTimetables()}");
            ResultSet rs1 = cstmt.executeQuery();
            System.out.println(rs1.toString());
            while (rs1.next()) {
                int timetable_id = rs1.getInt("timetable_id");
                int usr_id = rs1.getInt("usr_id");
                int lab_id = rs1.getInt("lab_id");
                Date time_start = rs1.getDate("time_start");
                Date time_end = rs1.getDate("time_end");
                int mo = rs1.getByte("mo");
                int tue = rs1.getByte("tue");
                int we = rs1.getByte("we");
                int th = rs1.getByte("th");
                int fr = rs1.getByte("fr");
                int sa = rs1.getByte("sa");
                int su = rs1.getByte("su");

                TimeTable time = new TimeTable(timetable_id, usr_id, lab_id, time_start, time_end, mo, tue, we, th, fr, sa, su);
                list.add(time);
            }
            rs1.close();
            conn.close();
        } catch (NullPointerException ex) {
        } catch (Exception e) {
        }
        return list;
    }

    public boolean insertTimeTable(TimeTable t) {
        try {
            Connection conn = DBConn.getConnection();

            CallableStatement cstmt = conn.prepareCall("{call insertTimetables(?,?,?,?,?,?,?,?,?,?,?)}");
            cstmt.setInt("usr_id", t.getUserID());
            cstmt.setInt("lab_id", t.getLabID());
            cstmt.setDate("time_start", t.getTimeStart());
            cstmt.setDate("time_end", t.getTimeEnd());
            cstmt.setByte("mo", (byte) t.getMo());
            cstmt.setByte("tue", (byte) t.getTue());
            cstmt.setByte("we", (byte) t.getWe());
            cstmt.setByte("th", (byte) t.getTh());
            cstmt.setByte("fr", (byte) t.getFr());
            cstmt.setByte("sa", (byte) t.getSa());
            cstmt.setByte("su", (byte) t.getSu());
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

    public boolean updateTimeTable(TimeTable t) {
        try {
            Connection conn = DBConn.getConnection();
            CallableStatement cstmt = conn.prepareCall("{call updateTimetables(?,?,?,?,?,?,?,?,?,?,?,?)}");
            cstmt.setInt("timetable_id", t.getId());
            cstmt.setInt("usr_id", t.getUserID());
            cstmt.setInt("lab_id", t.getLabID());
            cstmt.setDate("time_start", t.getTimeStart());
            cstmt.setDate("time_end", t.getTimeEnd());
            cstmt.setByte("mo", (byte) t.getMo());
            cstmt.setByte("tue", (byte) t.getTue());
            cstmt.setByte("we", (byte) t.getWe());
            cstmt.setByte("th", (byte) t.getTh());
            cstmt.setByte("fr", (byte) t.getFr());
            cstmt.setByte("sa", (byte) t.getSa());
            cstmt.setByte("su", (byte) t.getSu());
            
            int rows = cstmt.executeUpdate();
            if (rows > 0) {
                return true;
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    public boolean deleteTimeTable(int id) throws SQLException {
        Connection conn = DBConn.getConnection();

        CallableStatement cstmt = conn.prepareCall("{call deleteTimetables(?)}");
        cstmt.setInt("timetable_id", id);
        int rows = cstmt.executeUpdate();

        if (rows > 0) {
            return true;
        }
        return false;
    }
}
