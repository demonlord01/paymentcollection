/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package AdminServlets;

import Entities.Route;
import java.io.IOException;
import java.io.PrintWriter;
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
public class AddRoute extends HttpServlet {

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
                    String updateBtn = request.getParameter("update");
                    String submitBtn = request.getParameter("submit");
                    String updaterouteBtn = request.getParameter("updateroute");

                    if (addBtn != null) {
                        response.sendRedirect("addroute.jsp");
                    } else if (updateBtn != null) {
                        Long getId = Long.parseLong(updateBtn);

                        if (getId != null) {
                            Route route = paymentSession.getRouteByID(getId);

                            request.setAttribute("route", route);
                            request.getRequestDispatcher("updateroute.jsp").forward(request, response);
                        } else {

                        }
                    } else if (submitBtn != null) {
                        String routeName = request.getParameter("routename");
                        String city = request.getParameter("city");

                        paymentSession.insertRoute(routeName, city);

                        response.sendRedirect("ViewRoute");
                    } else if (updaterouteBtn != null) {
                        Long getId = Long.parseLong(request.getParameter("id"));
                        String routeName = request.getParameter("routename");
                        String city = request.getParameter("city");

                        paymentSession.updateRoute(getId, routeName, city);
                        
                        response.sendRedirect("ViewRoute");
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
