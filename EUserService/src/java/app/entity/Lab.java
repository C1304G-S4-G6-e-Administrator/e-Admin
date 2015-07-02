/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package app.entity;

import java.io.Serializable;

/**
 *
 * @author duc
 */
public class Lab implements Serializable{
    int labID;    
    String labName;
    int lab_quantity_student;
    int numOfCom;

    public int getLabID() {
        return labID;
    }

    public void setLabID(int labID) {
        this.labID = labID;
    }

    public String getLabName() {
        return labName;
    }

    public void setLabName(String labName) {
        this.labName = labName;
    }

    public int getLab_quantity_student() {
        return lab_quantity_student;
    }

    public void setLab_quantity_student(int lab_quantity_student) {
        this.lab_quantity_student = lab_quantity_student;
    }

    public int getNumOfCom() {
        return numOfCom;
    }

    public void setNumOfCom(int numOfCom) {
        this.numOfCom = numOfCom;
    }

    public Lab(String labName, int lab_quantity_student, int numOfCom) {
        this.labName = labName;
        this.lab_quantity_student = lab_quantity_student;
        this.numOfCom = numOfCom;
    }

    public Lab() {
    }

    public Lab(int labID, String labName, int lab_quantity_student, int numOfCom) {
        this.labID = labID;
        this.labName = labName;
        this.lab_quantity_student = lab_quantity_student;
        this.numOfCom = numOfCom;
    }

    
   

   
    
}
