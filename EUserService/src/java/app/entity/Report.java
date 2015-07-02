/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package app.entity;

import java.sql.Date;
import java.sql.SQLClientInfoException;

/**
 *
 * @author duc
 */
public class Report {
    int id;
    int userID;
    int labID;

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

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public Date getReportTime() {
        return reportTime;
    }

    public void setReportTime(Date reportTime) {
        this.reportTime = reportTime;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public Report(int id, int userID, int labID, String title, String content, Date reportTime, int status) {
        this.id = id;
        this.userID = userID;
        this.labID = labID;
        this.title = title;
        this.content = content;
        this.reportTime = reportTime;
        this.status = status;
    }

    public Report(int userID, int labID, String title, String content, Date reportTime, int status) {
        this.userID = userID;
        this.labID = labID;
        this.title = title;
        this.content = content;
        this.reportTime = reportTime;
        this.status = status;
    }
    String title;

    public Report() {
    }
    String content;
    java.sql.Date reportTime;
    int status;
}
