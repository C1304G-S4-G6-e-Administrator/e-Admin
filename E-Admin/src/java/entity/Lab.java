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
public class Lab {
    int id;
    String name;
    int numOfCom;

    public Lab() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getNumOfCom() {
        return numOfCom;
    }

    public void setNumOfCom(int numOfCom) {
        this.numOfCom = numOfCom;
    }

    public int getNumOfStudent() {
        return numOfStudent;
    }

    public void setNumOfStudent(int numOfStudent) {
        this.numOfStudent = numOfStudent;
    }

    public Lab(String name, int numOfCom, int numOfStudent) {
        this.name = name;
        this.numOfCom = numOfCom;
        this.numOfStudent = numOfStudent;
    }
    int numOfStudent;

    public Lab(int id, String name, int numOfCom, int numOfStudent) {
        this.id = id;
        this.name = name;
        this.numOfCom = numOfCom;
        this.numOfStudent = numOfStudent;
    }
   
}
