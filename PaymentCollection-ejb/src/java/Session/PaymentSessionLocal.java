/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package session;

import Entities.AdminTable;
import Entities.Customer;
import Entities.Payment;
import Entities.Route;
import Entities.SalesMan;
import java.util.List;
import javax.ejb.Local;

/**
 *
 * @author Vaibhav Bhagat
 */
@Local
public interface PaymentSessionLocal {

//--------------------------------------------------SalesMan-----------------------------------------------------
    public boolean insertSalesman(String name, String password, Long phonenumber,
            String emailid, String address, String dateofjoining, List<Route> routes);

    public List<SalesMan> getAllSalesmans();

    public SalesMan getSalesmanByID(Long id);

    public SalesMan getSalesman(String username, String password);

    public boolean updateSalesman(Long id, String name, String password, Long phonenumber,
            String emailid, String address, String dateofjoining);

    public boolean deleteSalesman(Long id);

    public boolean verifySalesman(String emailid, String password);

    public boolean verifySalesmanOldPassowrd(SalesMan salesman, String oldpassword);

    public boolean changeSalesmanPassword(SalesMan salesman, String newassword);

//---------------------------------------------------Route-------------------------------------------------------
    public boolean insertRoute(String name, String city);

    public List<Route> getAllRoutes();

    public Route getRouteByID(Long id);

    public List<Route> getAllRoutesBySalesMan(Long id);

    public boolean updateRoute(Long id, String name, String city);

    public boolean deleteRoute(Long id);

    public boolean assignNewRouteToSalesman(SalesMan s, Route r);

    public boolean deleteRouteOfSalesman(SalesMan s, Route r);

//--------------------------------------------------Customer------------------------------------------------------
    public boolean insertCustomer(String name, Long phonenumber, String emailid,
            String address, double payment, Route route);

    public List<Customer> getAllCustomer();

    public Customer getCustomerByID(Long id);

    public List<Customer> getCustomersByRoute(Route route);

    public Route getCustomerRoute(Customer c);

    public double getDuePaymentByCustomer(Customer c);

    public boolean updateCustomer(Long id, String name, Long phonenumber, String emailid,
            String address, double duepayment, Route route);

    public boolean updateCustomerPayment(Customer c, double duepayment);

    public boolean updateCustomerRoute(Customer c, Route route);

    public boolean deleteCustomer(Customer c);

    public boolean deleteCustomerRoute(Customer c);

//--------------------------------------------------Payment------------------------------------------------------
    public boolean insertPayment(double recievepayment, String gpslocation, String date,
            SalesMan salesman, Customer customer);

    public List<Payment> getAllPayments();

    public List<Payment> getAllPaymentByCustomer(Customer c);

    public List<Payment> getAllPaymentBySalesman(SalesMan c);

    public boolean updateTotalPayment(Customer customer, double recievedpayment);

    public Payment getPaymentById(Long id);

    public List<Double> getPaymentByDate(String date);

    public boolean deletePayment(Long id);

//----------------------------------------------------Admin-------------------------------------------------------
    public AdminTable getAdmin(String username, String password);

    public boolean verifyAdmin(String usermane, String password);

    public boolean verifyAdminOldPassowrd(AdminTable admin, String oldpassword);

    public boolean changeAdminPassword(AdminTable admin, String newpassword);

    public boolean forgetPassword(String userEmail) throws Exception;

}
