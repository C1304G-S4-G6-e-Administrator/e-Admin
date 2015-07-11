/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entity;

import java.sql.Date;

/**
 *
 * @author duc
 */
public class TimeTable {
    int id;
    int labid;
    int userID;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getLabid() {
        return labid;
    }

    public void setLabid(int labid) {
        this.labid = labid;
    }

    public int getUserID() {
        return userID;
    }

    public void setUserID(int userID) {
        this.userID = userID;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public int getSlot() {
        return slot;
    }

    public void setSlot(int slot) {
        this.slot = slot;
    }
    int status;
    Date date;

    public TimeTable(int labid, int userID, int status, Date date, int slot) {
        this.labid = labid;
        this.userID = userID;
        this.status = status;
        this.date = date;
        this.slot = slot;
    }

    public TimeTable(int id, int labid, int userID, int status, Date date, int slot) {
        this.id = id;
        this.labid = labid;
        this.userID = userID;
        this.status = status;
        this.date = date;
        this.slot = slot;
    }

    public TimeTable() {
    }
    int slot;
}
