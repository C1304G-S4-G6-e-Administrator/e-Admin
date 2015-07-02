/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package app.service;

import app.entity.Lab;
import app.entity.TimeTable;
import app.entity.User;
import db.LabDB;
import db.TimeTableDB;
import db.UserDB;
import java.sql.SQLException;
import java.util.ArrayList;

import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.ejb.EJB;
import javax.jws.WebService;
import javax.jws.WebMethod;
import javax.jws.WebParam;

/**
 *
 * @author duc
 */
@WebService(serviceName = "UserService")
public class UserService {
   
    /**
     * This is a sample web service operation
     */
    @WebMethod(operationName = "hello")
    public String hello(@WebParam(name = "name") String txt) {
        return "Hello " + txt + " !";
    }

    /**
     * Web service operation
     */
    @WebMethod(operationName = "checkLogin")
    public boolean checkLogin(@WebParam(name = "username") String username, @WebParam(name = "password") String password) {
        boolean check=false;
            LabDB db=new LabDB();
            List<Lab> list= db.getAllLabs();
            System.out.println(list.size());
           
            if (username.equals("admin")&&password.equals("123456")) {
                check=true;
                
            }
        return check;
    }

    /**
     * Web service operation
     */
    @WebMethod(operationName = "getTimeTableLists")
    public List<TimeTable> getTimeTableLists(@WebParam(name = "userID") int userID) {
        TimeTableDB db=new TimeTableDB();
        List<TimeTable> listID=new ArrayList<TimeTable>();
        List<TimeTable> list=db.getAllTimeTables();
        for(TimeTable time:list )
        {
            if (time.getUserID()==userID) {
                listID.add(time);
            }
        }
        System.out.println(listID.size());
        return listID;
    }

    /**
     * Web service operation
     */
    @WebMethod(operationName = "getAllLabs")
    public List<Lab> getAllLabs() {
        LabDB lab=new LabDB();
        List<Lab> list=lab.getAllLabs();
        System.out.println(list.size()+"aa");
        return list;
    }

    /**
     * Web service operation
     */
    @WebMethod(operationName = "getUserList")
    public List<User> getUserList() {
        UserDB db=new UserDB();
        List<User> list=db.getAllUsers();                
        return list;
    }

}
