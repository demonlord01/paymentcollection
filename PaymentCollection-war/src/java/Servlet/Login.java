/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlet;

import Entities.AdminTable;
import Entities.SalesMan;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import session.PaymentSessionLocal;

/**
 *
 * @author Vaibhav Bhagat
 */
public class Login extends HttpServlet {

    @EJB
    private PaymentSessionLocal paymentSession;

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
            String loginBtn = request.getParameter("login");
            String forgetpasswordBtn = request.getParameter("forgetpassword");
            String searchBtn = request.getParameter("search");

            if (loginBtn != null) {
                String username = request.getParameter("username");
                String password = request.getParameter("password");

                if (paymentSession.verifyAdmin(username, password) == true) {
                    HttpSession session = request.getSession(false);
                    if (session == null) {
                        session = request.getSession();
                    }
                    if (session != null) {
                        session.setAttribute("Usertype", "admin");
                    }

                    try {
                        AdminTable adminLogin = paymentSession.getAdmin(username, password);
                        if (adminLogin != null) {
                            session.setAttribute("adminLogin", adminLogin);
                        }
                    } catch (NullPointerException e) {
                        System.out.println("********************ERROR: Admin_Login"
                                + "-NullPointerException********************:" + e);
                    }

                    response.sendRedirect("ViewSalesman");
                } else {
                    if (paymentSession.verifySalesman(username, password) == true) {
                        HttpSession session = request.getSession(false);
                        if (session == null) {
                            session = request.getSession();
                        }
                        if (session != null) {
                            session.setAttribute("Usertype", "salesman");
                        }

                        try {
                            SalesMan salesmanLogin = paymentSession.getSalesman(username, password);
                            if (salesmanLogin != null) {
                                session.setAttribute("salesmanLogin", salesmanLogin);
                            }
                        } catch (NullPointerException e) {
                            System.out.println("********************ERROR: Salesman_Login"
                                    + "-NullPointerException********************:" + e);
                        }

                        response.sendRedirect("salesmanindex.jsp");
                    } else {
                        response.sendRedirect("login.jsp");
                    }
                }
            } else if (forgetpasswordBtn != null) {
                response.sendRedirect("forgotpassword.jsp");
            } else if (searchBtn != null) {
                String emailId = request.getParameter("emailid");

                try {
                    if (paymentSession.forgetPassword(emailId) == true) {
                        response.sendRedirect("login.jsp");
                    } else {
                        out.print("Error Sending Email Please Try Again.");
                    }
                } catch (Exception e) {
                    System.out.println("**************** Error: Unexpacted exception, for more "
                            + "details please check log file ****************: " + e);
                    Logger.getLogger(Login.class.getName()).log(Level.SEVERE, null, e);
                }
            } else {
                response.sendRedirect("login.jsp");
            }
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
