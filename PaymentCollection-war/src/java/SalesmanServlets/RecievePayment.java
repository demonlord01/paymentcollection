/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package SalesmanServlets;

import Entities.Route;
import Entities.SalesMan;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
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
public class RecievePayment extends HttpServlet {

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
            HttpSession session = request.getSession(false);
            if (session != null) {
                String getAdmin = (String) session.getAttribute("Usertype");
                if (getAdmin.equals("salesman")) {
                    String submitBtn = request.getParameter("submit");
                    
                    if (submitBtn == null) {
                        SalesMan salesman = (SalesMan) session.getAttribute("salesmanLogin");
                        Long salesmanId = salesman.getId();
                        
                        List<Route> routeList = paymentSession.getAllRoutesBySalesMan(salesmanId);
                        
                        request.setAttribute("routeList", routeList);
                        request.getRequestDispatcher("salesmanreceive.jsp").forward(request, response);
                    } else {
                        if (submitBtn.equals("update")) {
                            Double paymentReceived = Double.parseDouble(request.getParameter("paymentreceived"));
                            String dateOfPayment = request.getParameter("dateofpayment");
                            SalesMan salesman = (SalesMan) session.getAttribute("salesmanLogin");
//                            name="customer"
//                            name="salesman"
//                            name="route"
//                            name="paymentdue"
//                            name="paymentreceived"
//                            name="dateofpayment"
                            paymentSession.insertPayment(paymentReceived, null, dateOfPayment, salesman, null);

                            response.sendRedirect("ViewPaymentDetails");
                        } else if (submitBtn.equals("")) {
                            paymentSession.insertPayment(0, null, null, null, null);
                        } else {

                        }
                    }
                } else {
                    session.invalidate();
                    request.getRequestDispatcher("login.jsp").forward(request, response);
                }
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
