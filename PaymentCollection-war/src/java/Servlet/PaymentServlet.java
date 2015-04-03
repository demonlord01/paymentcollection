/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlet;

import Entities.AdminTable;
import Entities.Customer;
import Entities.Payment;
import Entities.Route;
import Entities.SalesMan;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Iterator;
import java.util.List;
import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import session.PaymentSessionLocal;

/**
 *
 * @author Vaibhav Bhagat
 */
public class PaymentServlet extends HttpServlet {

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
            
//            List<Route> rlist = paymentSession.getAllRoutes();
//            Route r = paymentSession.getRouteByID(2l);

//            paymentSession.insertSalesman("Vaibhav", "qwerty", 9888283397l, "vaibhav3556@gmail.com", "Sector 42C, Chandigarh", "12/3/15", rlist);
//            paymentSession.insertRoute("Sector 42", "Chandigarh");
//            paymentSession.insertCustomer("Ajay", 9874563217l, "ajay4644@gmail.com", "Sector 34", 4656, r);
//            paymentSession.updateSalesman(1l, "Rahul", "qwerty", 9876543219l, "rbs@gmail.com", "Sector 20, Chandigarh", "12/3/15");
//            paymentSession.updateRoute(4l, "Sector 20", "Chandigarh");
            
//            SalesMan s = paymentSession.getSalesmanByID(3l);
//            
//            Route r = paymentSession.getRouteByID(4l);
//            
//            paymentSession.assignNewRouteToSalesman(s, r);
            
//            Customer c = paymentSession.getCustomerByID(1l);
            
//            paymentSession.updateCustomerPayment(c, 9999);
//            paymentSession.deleteCustomer(c);
//            paymentSession.deleteCustomerRoute(c);
            
//            paymentSession.insertPayment(6256, "30.73°N, 76.79°E", "25/3/15", s, c);
            
//            AdminTable a = paymentSession.getAdmin();
        }
//        SalesMan s = paymentSession.getSalesmanByID(3l);
//        List<Payment> testList = paymentSession.getAllPaymentBySalesman(s);
//            Iterator it = testList.iterator();
//            while (it.hasNext()) {
//                Payment p = (Payment) it.next();
//                System.out.println(p.getP_recievepayment());
//                System.out.println(c.getC_address());
//                System.out.println(c.getC_emailid());
//                System.out.println(c.getC_payment());
//                System.out.println(c.getC_phonenumber());
//                System.out.println(c.getC_route());
//            }
//        Customer c = paymentSession.getCustomerByID(102l);
//        System.out.println(c.getC_name());
//        System.out.println(c.getC_address());
//        System.out.println(c.getC_emailid());
//        System.out.println(c.getC_payment());
//        System.out.println(c.getC_phonenumber());
//        System.out.println(c.getC_route());
        
//        if(request.getParameter("operation").equalsIgnoreCase("login")){
//                System.out.println("login");
//            }
            
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
