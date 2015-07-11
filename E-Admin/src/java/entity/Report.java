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
public class Report {
    int id;
    int userID;

    public Report(int id, int userID, int techID, int labID, String reportTilte, String reportContent, Date dateStart, int status, Date deadLine, String message) {
        this.id = id;
        this.userID = userID;
        this.techID = techID;
        this.labID = labID;
        this.reportTilte = reportTilte;
        this.reportContent = reportContent;
        this.dateStart = dateStart;
        this.status = status;
        this.deadLine = deadLine;
        this.message = message;
    }

    public Report(int userID, int techID, int labID, String reportTilte, String reportContent, Date dateStart, int status, Date deadLine, String message) {
        this.userID = userID;
        this.techID = techID;
        this.labID = labID;
        this.reportTilte = reportTilte;
        this.reportContent = reportContent;
        this.dateStart = dateStart;
        this.status = status;
        this.deadLine = deadLine;
        this.message = message;
    }

    public Report() {
    }

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

    public int getTechID() {
        return techID;
    }

    public void setTechID(int techID) {
        this.techID = techID;
    }

    public int getLabID() {
        return labID;
    }

    public void setLabID(int labID) {
        this.labID = labID;
    }

    public String getReportTilte() {
        return reportTilte;
    }

    public void setReportTilte(String reportTilte) {
        this.reportTilte = reportTilte;
    }

    public String getReportContent() {
        return reportContent;
    }

    public void setReportContent(String reportContent) {
        this.reportContent = reportContent;
    }

    public Date getDateStart() {
        return dateStart;
    }

    public void setDateStart(Date dateStart) {
        this.dateStart = dateStart;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public Date getDeadLine() {
        return deadLine;
    }

    public void setDeadLine(Date deadLine) {
        this.deadLine = deadLine;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }
    int techID;
    int labID;
    String reportTilte;
    String reportContent;
    java.sql.Date dateStart;
    int status;
    java.sql.Date deadLine;
    String message;
    
    
}
