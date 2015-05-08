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
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.NoResultException;
import javax.persistence.PersistenceContext;
import org.apache.commons.mail.SimpleEmail;

/**
 *
 * @author Vaibhav Bhagat (वैभव)
 */
@Stateless
public class PaymentSession implements PaymentSessionLocal {

    @PersistenceContext
    EntityManager em;

//--------------------------------------------------SalesMan-----------------------------------------------------
    @Override
    public boolean insertSalesman(String name, String password, Long phonenumber,
            String emailid, String address, String dateofjoining, List<Route> routes) {
        SalesMan s = new SalesMan();
        s.setS_name(name);
        s.setS_password(password);
        s.setS_phonenumber(phonenumber);
        s.setS_emailid(emailid);
        s.setS_address(address);
        s.setS_dateofjoining(dateofjoining);
        s.setS_route(routes);
        em.persist(s);
        return true;
    }

    @Override
    public List<SalesMan> getAllSalesmans() {
        List<SalesMan> allSalesMans = em.createQuery("SELECT s FROM SalesMan s ").getResultList();
        return allSalesMans;
    }

    @Override
    public SalesMan getSalesmanByID(Long id) {
        SalesMan salesman;
        try {
            salesman = (SalesMan) em.createQuery("SELECT s FROM SalesMan s WHERE s.id='" + id
                    + "'").getSingleResult();
        } catch (NoResultException e) {
            System.out.println("********************ERROR: getSalesmanByID-NoResultException********************:" + e);
            return null;
        }

        return salesman;
    }

    @Override
    public SalesMan getSalesman(String username, String password) {
        SalesMan salesman = (SalesMan) em.createQuery("SELECT s FROM SalesMan s WHERE s.s_emailid='"
                + username + "'").getSingleResult();
        if (salesman.getS_emailid().equals(username) && salesman.getS_password().equals(password)) {
            return salesman;
        }
        return null;
    }
//    @Override
//    public List<SalesMan> getAllSalesMenByRoute(Long id) {
//        Route routeName = (Route) em.createQuery("SELECT r FROM Route r WHERE"
//                + "r.id='" + id + "'").getSingleResult();
//        return routeName.getSalesMans();
//    }

    @Override
    public boolean updateSalesman(Long id, String name, String password, Long phonenumber,
            String emailid, String address, String dateofjoining) {
        em.createQuery("UPDATE SalesMan s SET s.s_name='" + name + "', s.s_password='" + password + "',"
                + "s.s_address='" + address + "', s.s_phonenumber='" + phonenumber + "',"
                + "s.s_emailid='" + emailid + "', s.s_dateofjoining='" + dateofjoining + "'"
                + "WHERE s.id='" + id + "'").executeUpdate();
        return true;
    }

    @Override
    public boolean deleteSalesman(Long id) {
        em.createQuery("DELETE FROM SalesMan s WHERE s.id='" + id + "'").executeUpdate();
        return true;
    }

    @Override
    public boolean verifySalesman(String emailid, String password) {
        try {
            SalesMan salesman = (SalesMan) em.createQuery("SELECT s FROM SalesMan s WHERE s.s_emailid='" + emailid
                    + "'").getSingleResult();
            if (salesman != null) {
                if (salesman.getS_emailid().equals(emailid) && salesman.getS_password().equals(password)) {
                    return true;
                }
            }
        } catch (NoResultException e) {
            System.out.println("********************ERROR: verifySalesman-NoResultException********************:" + e);
        }
        return false;
    }

    @Override
    public boolean verifySalesmanOldPassowrd(SalesMan salesman, String oldpassword) {
        if (salesman != null || oldpassword != null) {
            Long salesmanId = salesman.getId();
            String getOldPassword = (String) em.createQuery("SELECT s.s_password FROM SalesMan s WHERE s.id='"
                    + salesmanId + "'").getSingleResult();
            if (getOldPassword.equals(oldpassword)) {
                return true;
            }
        }
        return false;
    }

    @Override
    public boolean changeSalesmanPassword(SalesMan salesman, String newassword) {
        if (salesman != null || newassword != null) {
            Long salesmanId = salesman.getId();
            em.createQuery("UPDATE SalesMan s SET s.s_password='" + newassword + "' WHERE s.id='"
                    + salesmanId + "'").executeUpdate();
        } else {
            return false;
        }
        return true;
    }
//---------------------------------------------------Route-------------------------------------------------------

    @Override
    public boolean insertRoute(String name, String city) {
        Route r = new Route();
        r.setR_name(name);
        r.setCity(city);
        em.persist(r);
        return true;
    }

    @Override
    public List<Route> getAllRoutes() {
        List<Route> allRoutes = em.createQuery("SELECT r FROM Route r ").getResultList();
        return allRoutes;
    }

    @Override
    public Route getRouteByID(Long id) {
        Route route;
        try {
            route = (Route) em.createQuery("SELECT r FROM Route r WHERE r.id='" + id
                    + "'").getSingleResult();
        } catch (NoResultException e) {
            System.out.println("********************ERROR: getRouteByID-NoResultException********************:" + e);
            return null;
        }
        return route;
    }

    @Override
    public List<Route> getAllRoutesBySalesMan(Long id) {
        SalesMan salesmanName = (SalesMan) em.createQuery("SELECT r FROM SalesMan r WHERE "
                + "r.id='" + id + "'").getSingleResult();
        return salesmanName.getS_route();
    }

    @Override
    public boolean updateRoute(Long id, String name, String city) {
        em.createQuery("UPDATE Route r SET r.r_name='" + name + "', r.city='" + city + "'"
                + "WHERE r.id='" + id + "'").executeUpdate();
        return true;
    }

    @Override
    public boolean deleteRoute(Long id) {
        em.createQuery("DELETE FROM Route r WHERE r.id='" + id + "'").executeUpdate();
        return true;
    }

    @Override
    public boolean assignNewRouteToSalesman(SalesMan s, Route r) {
        List<Route> newRouteList = s.getS_route();
        newRouteList.add(r);
        s.setS_route(newRouteList);
        em.merge(s);
        return true;
    }

    @Override
    public boolean deleteRouteOfSalesman(SalesMan s, Route r) {
        List<Route> oldRouteList = s.getS_route();
        oldRouteList.remove(r);
        s.setS_route(oldRouteList);
        em.merge(s);
        return true;
    }

//--------------------------------------------------Customer------------------------------------------------------
    @Override
    public boolean insertCustomer(String name, Long phonenumber, String emailid,
            String address, double payment, Route route) {
        Customer c = new Customer();
        c.setC_name(name);
        c.setC_phonenumber(phonenumber);
        c.setC_emailid(emailid);
        c.setC_address(address);
        c.setC_duepayment(payment);
        c.setC_route(route);
        em.persist(c);
        return true;
    }

    @Override
    public List<Customer> getAllCustomer() {
        List<Customer> allCustomers = em.createQuery("SELECT c FROM Customer c ").getResultList();
        return allCustomers;
    }

    @Override
    public Customer getCustomerByID(Long id) {
        Customer customer;
        try {
            customer = (Customer) em.createQuery("SELECT c FROM Customer c WHERE c.id='" + id
                    + "'").getSingleResult();
        } catch (NoResultException e) {
            System.out.println("********************ERROR: getCustomerByID-NoResultException********************:" + e);
            return null;
        }
        return customer;
    }

    @Override
    public List<Customer> getCustomersByRoute(Route route) {
        List<Customer> customers;
        try {
            customers = em.createQuery("SELECT c FROM Customer c WHERE c.c_route=:route")
                    .setParameter("route", route).getResultList();
        } catch (NoResultException e) {
            System.out.println("********************ERROR: getCustomersByRoute-NoResultException********************:" + e);
            return null;
        }
        return customers;
    }

    @Override
    public Route getCustomerRoute(Customer c) {
        return c.getC_route();
    }

    @Override
    public double getDuePaymentByCustomer(Customer c) {
        return c.getC_duepayment();
    }

    @Override
    public boolean updateCustomer(Long id, String name, Long phonenumber, String emailid,
            String address, double duepayment, Route route) {
        em.createQuery("UPDATE Customer c SET c.c_name='" + name + "', c.c_phonenumber='" + phonenumber
                + "', c.c_emailid='" + emailid + "', c.c_address='" + address + "', c.c_duepayment='"
                + duepayment + "' WHERE c.id='" + id + "'").executeUpdate();
        Customer customer = em.find(Customer.class, id);
        if (customer != null) {
            customer.setC_route(route);
        }
        return true;
    }

    @Override
    public boolean updateCustomerPayment(Customer c, double duepayment) {
        Long id = c.getId();
        em.createQuery("UPDATE Customer c SET c.c_duepayment='" + duepayment + "' WHERE c.id='"
                + id + "'").executeUpdate();
        return true;
    }

    @Override
    public boolean updateCustomerRoute(Customer c, Route route) {
        c.setC_route(route);
        em.merge(c);
        return true;
    }

    @Override
    public boolean deleteCustomer(Customer c) {
        Long id = c.getId();
        c = em.find(Customer.class, id);
        if (c != null) {
            em.remove(c);
        }
        return true;
    }

    @Override
    public boolean deleteCustomerRoute(Customer c) {
        if (c.getC_route() != null) {
            c.setC_route(null);
            em.merge(c);
        }
        return true;
    }

//--------------------------------------------------Payment------------------------------------------------------
    @Override
    public boolean insertPayment(double recievepayment, String gpslocation, String date,
            SalesMan salesman, Customer customer) {
        if (updateTotalPayment(customer, recievepayment) == true) {
            Payment p = new Payment();
            p.setP_recievepayment(recievepayment);
            p.setP_gpslocation(gpslocation);
            p.setP_date(date);
            p.setP_salesman(salesman);
            p.setP_customer(customer);
            em.persist(p);
        }else {
            return false;
        }
        return true;
    }

    @Override
    public List<Payment> getAllPayments() {
        List<Payment> allPayments = em.createQuery("SELECT p FROM Payment p").getResultList();
        return allPayments;
    }

    @Override
    public List<Payment> getAllPaymentByCustomer(Customer c) {
        List<Payment> plist = em.createQuery("SELECT p FROM Payment p WHERE p.p_customer = :customerobj")
                .setParameter("customerobj", c).getResultList();
        return plist;
    }

    @Override
    public List<Payment> getAllPaymentBySalesman(SalesMan s) {
        List<Payment> plist = em.createQuery("SELECT p FROM Payment p WHERE p.p_salesman = :salesmanobj")
                .setParameter("salesmanobj", s).getResultList();
        return plist;
    }

    @Override
    public boolean updateTotalPayment(Customer customer, double recievedpayment) {
        double duepayment = customer.getC_duepayment();
        if ((duepayment >= recievedpayment) && (recievedpayment != 0)) {
            double totalDuePayment = duepayment - recievedpayment;
            updateCustomerPayment(customer, totalDuePayment);
        } else {
            return false;
        }
        return true;
    }

    @Override
    public Payment getPaymentById(Long id) {
        Payment payment = (Payment) em.createQuery("SELECT p FROM Payment p WHERE p.id='"
                + id + "'").getSingleResult();
        return payment;
    }

    @Override
    public List<Double> getPaymentByDate(String date) {
        List<Double> plist = em.createQuery("SELECT p.p_recievepayment FROM Payment p WHERE p.p_date='"
                + date + "'").getResultList();
        return plist;
    }

    @Override
    public boolean deletePayment(Long id) {
        Payment p = em.find(Payment.class, id);
        if (p != null) {
            em.remove(p);
        }
        return true;
    }

//----------------------------------------------------Admin-------------------------------------------------------
    @Override
    public AdminTable getAdmin(String username, String password) {
        AdminTable admin = (AdminTable) em.createQuery("SELECT a FROM AdminTable a WHERE a.username='"
                + username + "'").getSingleResult();
        if (admin.getUsername().equals(username) && admin.getPassword().equals(password)) {
            return admin;
        }
        return null;
    }

    @Override
    public boolean verifyAdmin(String username, String password) {
        try {
            AdminTable admin = (AdminTable) em.createQuery("SELECT a FROM AdminTable a WHERE a.username='"
                    + username + "'").getSingleResult();
            if (admin != null) {
                if (admin.getUsername().equals(username) && admin.getPassword().equals(password)) {
                    return true;
                }
            }
        } catch (NoResultException e) {
            System.out.println("********************ERROR: verifyAdmin-NoResultException********************:" + e);
        }
        return false;
    }

    @Override
    public boolean verifyAdminOldPassowrd(AdminTable admin, String oldpassword) {
        if (admin != null || oldpassword != null) {
            Long adminId = admin.getId();
            String getOldPassword = (String) em.createQuery("SELECT a.password FROM AdminTable a WHERE a.id='"
                    + adminId + "'").getSingleResult();
            if (getOldPassword.equals(oldpassword)) {
                return true;
            }
        }
        return false;
    }

    @Override
    public boolean changeAdminPassword(AdminTable admin, String newpassword) {
        if (admin != null || newpassword != null) {
            Long adminId = admin.getId();
            em.createQuery("UPDATE AdminTable a SET a.password='" + newpassword + "' WHERE a.id='"
                    + adminId + "'").executeUpdate();
        } else {
            return false;
        }
        return true;
    }

    @Override
    public boolean forgetPassword(String userEmail) throws Exception {
        SalesMan salesman;
        String recipients;
        String password;

        try {
            salesman = (SalesMan) em.createQuery("SELECT s FROM SalesMan s WHERE s.s_emailid='"
                    + userEmail + "'").getSingleResult();
        } catch (NoResultException e) {
            salesman = null;
            System.out.println("********************ERROR: forgetPassword-NoSalesman********************:" + e);
        }

        if (salesman != null) {
            password = salesman.getS_password();
            recipients = salesman.getS_emailid();

            if (password != null) {

                if (recipients != null) {
                    SimpleEmail email = new SimpleEmail();

                    email.addTo(recipients);
                    email.setHostName("smtp.gmail.com");
                    email.setAuthentication("dirshinfotech@gmail.com", "dirshinfotech123"); //write correct username and password

                    email.setFrom("taxi4uu@gmail.com", "taxi4utaxi4u");
                    email.setSubject("Payment Collection: Password Recovery");

                    email.setMsg("Your Password for Username: " + userEmail + " is : '" + password + "'.");

                    email.setSmtpPort(465);
                    email.setSSL(true);
                    email.setTLS(true);
                    email.send();
                    return true;
                } else {
                    System.out.println("############### No E-Mail id found. ###############");
                }
            } else {
                System.out.println("############### No password found. ###############");
            }
        } else {
            System.out.println("############### No Salesman exist. ###############");
        }
        return false;
    }

}
