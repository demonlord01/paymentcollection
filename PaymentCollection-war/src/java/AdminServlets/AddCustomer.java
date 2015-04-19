/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package AdminServlets;

import Entities.Customer;
import Entities.Route;
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
public class AddCustomer extends HttpServlet {

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
                if (getAdmin.equals("admin")) {
                    String addBtn = request.getParameter("add");
                    String submitBtn = request.getParameter("submit");
                    String updateBtn = request.getParameter("update");
                    if (addBtn != null) {
                        List<Route> routeList = paymentSession.getAllRoutes();
                        request.setAttribute("routeList", routeList);
                        request.getRequestDispatcher("addcustomer.jsp").forward(request, response);
                    } else if (submitBtn != null) {
                        String customerName = request.getParameter("customerName");
                        Long phoneNumber = Long.parseLong(request.getParameter("phoneNumber"));
                        String emailId = request.getParameter("emailId");
                        String address = request.getParameter("address");
                        Long routeId = Long.parseLong(request.getParameter("route"));
                        Double duePayment = Double.parseDouble(request.getParameter("duePayment"));

                        Route route = paymentSession.getRouteByID(routeId);
                        paymentSession.insertCustomer(customerName, phoneNumber, emailId, address, duePayment, route);

                        response.sendRedirect("ViewCustomer");
                    } else if (updateBtn != null) {
                        if (!updateBtn.equals("update")) {
                            System.out.println(updateBtn);
                            Long id = Long.parseLong(updateBtn);
                            Customer customer = paymentSession.getCustomerByID(id);

                            request.setAttribute("customer", customer);
                            request.getRequestDispatcher("addcustomer.jsp").forward(request, response);
                        } else {
                            response.sendError(901, "PLEASE SELECT ANY ROW FIRST !!");
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
