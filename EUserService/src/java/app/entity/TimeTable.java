/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package app.entity;

import java.sql.Date;

/**
 *
 * @author duc
 */
public class TimeTable {
    int id;
    int userID;
    int labID;
    java.sql.Date timeStart;

    public TimeTable() {
    }

    public TimeTable(int userID, int labID, Date timeStart, Date timeEnd, int mo, int tue, int we, int th, int fr, int sa, int su) {
        this.userID = userID;
        this.labID = labID;
        this.timeStart = timeStart;
        this.timeEnd = timeEnd;
        this.mo = mo;
        this.tue = tue;
        this.we = we;
        this.th = th;
        this.fr = fr;
        this.sa = sa;
        this.su = su;
    }

    public TimeTable(int id, int userID, int labID, Date timeStart, Date timeEnd, int mo, int tue, int we, int th, int fr, int sa, int su) {
        this.id = id;
        this.userID = userID;
        this.labID = labID;
        this.timeStart = timeStart;
        this.timeEnd = timeEnd;
        this.mo = mo;
        this.tue = tue;
        this.we = we;
        this.th = th;
        this.fr = fr;
        this.sa = sa;
        this.su = su;
    }
    java.sql.Date timeEnd;
    int mo;
    int tue;
    int we;
    int th;
    int fr;    

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getUserID() {
        return userID;
    }

    public void setUserID(int userID) {
        this.userID = userID;
    }

    public int getLabID() {
        return labID;
    }

    public void setLabID(int labID) {
        this.labID = labID;
    }

    public Date getTimeStart() {
        return timeStart;
    }

    public void setTimeStart(Date timeStart) {
        this.timeStart = timeStart;
    }

    public Date getTimeEnd() {
        return timeEnd;
    }

    public void setTimeEnd(Date timeEnd) {
        this.timeEnd = timeEnd;
    }

    public int getMo() {
        return mo;
    }

    public void setMo(int mo) {
        this.mo = mo;
    }

    public int getTue() {
        return tue;
    }

    public void setTue(int tue) {
        this.tue = tue;
    }

    public int getWe() {
        return we;
    }

    public void setWe(int we) {
        this.we = we;
    }

    public int getTh() {
        return th;
    }

    public void setTh(int th) {
        this.th = th;
    }

    public int getFr() {
        return fr;
    }

    public void setFr(int fr) {
        this.fr = fr;
    }

    public int getSa() {
        return sa;
    }

    public void setSa(int sa) {
        this.sa = sa;
    }

    public int getSu() {
        return su;
    }

    public void setSu(int su) {
        this.su = su;
    }
    int sa;
    int su;
}
