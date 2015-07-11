/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet_lab;

import data.database;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import servlet_user.Update_user;

/**
 *
 * @author DUNG
 */
@WebServlet(name = "Update_lab", urlPatterns = {"/Update_lab"})
public class Update_lab extends HttpServlet {

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
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            HttpSession session = request.getSession(true);
            String namel = request.getParameter("txtAddressl");
            String passl = request.getParameter("txtAgel");
            String num = request.getParameter("numOfCom");

            int status = 1;
            int role = (Integer) session.getAttribute("role");
            if (role == 1) {
                status = 0;
            }

            String id = request.getParameter("id");
            database db = new database();

            if (id.equals("null")) {
                db.updateData("insert into Labs values ('" + namel + "'," + passl + "," + num + "," + status + " )");
            } else {
                db.updateData("update Labs set lab_name= '" + namel + "',lab_quantity_student = " + passl + ",numOfCom = " + num + ",sta=" + status + " where lab_id =" + id);
            }
            RequestDispatcher dispatch = getServletContext().getRequestDispatcher("/List");
            dispatch.forward(request, response);

        } catch (Exception ex) {
            Logger.getLogger(Update_lab.class.getName()).log(Level.SEVERE, null, ex);
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
