/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package AdminServlets;


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
 * @author asdzsfsdg
 */
public class ConfirmPassword extends HttpServlet {
    @EJB
    private PaymentSessionLocal paymentSession;

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
           HttpSession session = request.getSession(false);
            if (session != null) {
                String getAdmin = (String) session.getAttribute("Usertype");
                if (getAdmin.equals("admin")) {
                    String oldpassword = request.getParameter("oldpassword");
                    String newpassword = request.getParameter("newpassword");
                    String confirmpassword = request.getParameter("confirmpassword");
                    
                    
                    if(!(newpassword.equals(confirmpassword)))
                    {
                        request.getRequestDispatcher("confirmpassword.jsp");
                        out.println("Passwords do not match");
                    }
                    
                    else if(newpassword.equals("")||confirmpassword.equals(""))
                    {
                        
                        out.println("Both fields are required");
                    }
                    
                    else if(newpassword.equals(confirmpassword))
                    {
                        if(!(newpassword.equals(" ")||confirmpassword.equals(" ")))
                        {
                       paymentSession.changepassword(oldpassword, newpassword);
                       out.println("Password changed Successfully");
                        }
                        else
                            out.println("No field can be empty");
                    }
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
