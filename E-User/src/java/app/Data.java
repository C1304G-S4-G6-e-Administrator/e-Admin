/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package app;

import java.util.List;
import service.Lab;
import service.TimeTable;

/**
 *
 * @author duc
 */
public class Data {

    private static java.util.List<service.TimeTable> getTimeTableLists(int userID) {
        service.UserService_Service service = new service.UserService_Service();
        service.UserService port = service.getUserServicePort();
        return port.getTimeTableLists(userID);
    }
    public List<TimeTable> getAllTimetables(int id)
    {
        return getTimeTableLists(id);
    }
    public List<Lab> getListLabs()
    {
        return getAllLabs();
    }

    private static java.util.List<service.Lab> getAllLabs() {
        service.UserService_Service service = new service.UserService_Service();
        service.UserService port = service.getUserServicePort();
        return port.getAllLabs();
    }
}
