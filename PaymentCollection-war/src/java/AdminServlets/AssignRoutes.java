/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package AdminServlets;

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
public class AssignRoutes extends HttpServlet {

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
                    SalesMan salesman = (SalesMan) session.getAttribute("admin_salesman");
                    Long salesmanid = salesman.getId();
                    String deleterouteBtn = request.getParameter("deleteroute");
                    String assignrouteBtn = request.getParameter("assignroute");

                    if (deleterouteBtn != null) {
                        String assignedrouteid[] = request.getParameterValues("assignedrouteid");

                        for (int i = 0; i < assignedrouteid.length; i++) {
                            Long routeId = Long.parseLong(assignedrouteid[i]);

                            Route route = paymentSession.getRouteByID(routeId);
                            paymentSession.deleteRouteOfSalesman(salesman, route);
                        }
                        response.sendRedirect("AssignRoutes");
                    } else if (assignrouteBtn != null) {
                        String unassignedrouteid[] = request.getParameterValues("unassignedrouteid");

                        for (int j = 0; j < unassignedrouteid.length; j++) {
                            Long routeId = Long.parseLong(unassignedrouteid[j]);

                            Route route = paymentSession.getRouteByID(routeId);
                            paymentSession.assignNewRouteToSalesman(salesman, route);
                        }
                        response.sendRedirect("AssignRoutes");
                    } else if (salesmanid != null) {
                        List<Route> allRoutes = paymentSession.getAllRoutes();
                        List<Route> routes = paymentSession.getAllRoutesBySalesMan(salesmanid);
                        allRoutes.removeAll(routes);

                        request.setAttribute("allRoutes", allRoutes);
                        request.setAttribute("salesmanroute", routes);
                        request.getRequestDispatcher("assignroute.jsp").forward(request, response);
                    } else {
                        session.invalidate();
                        request.getRequestDispatcher("login.jsp").forward(request, response);
                    }
                }
            } else {
                session.invalidate();
                request.getRequestDispatcher("login.jsp").forward(request, response);
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
