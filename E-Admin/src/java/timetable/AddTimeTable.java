/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package timetable;

import com.microsoft.sqlserver.jdbc.SQLServerException;
import data.database;
import entity.User;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author duc
 */
public class AddTimeTable extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            response.setContentType("text/html;charset=UTF-8");
             data.database db=new database();
            HttpSession session =request.getSession(true);
            int labID=db.getLabByName(request.getParameter("txtlabID"));
            System.out.println("lab"+labID);
            User user=(User)session.getAttribute("user");
            System.out.println(user.toString());
            int slot=Integer.valueOf(request.getParameter("slot"));
            System.out.println(slot);
            
           String date=request.getParameter("user_data[birthday]");
            System.out.println(date);
           
          
            int status=0;
            
            db.updateData("insert into TimeTable values(" + labID + "," + user.getId() + "," + status + ",'" + date + "'," + slot +")");
            RequestDispatcher dispatch = getServletContext().getRequestDispatcher("/ListTimeTable");
           dispatch.forward(request, response);
        } 
      
        catch (Exception ex) {
            Logger.getLogger(AddTimeTable.class.getName()).log(Level.SEVERE, null, ex);
        }
        
                
       
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
