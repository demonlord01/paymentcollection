/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package WebServices;

import Entities.Customer;
import Entities.Route;
import Entities.SalesMan;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.ws.rs.core.Context;
import javax.ws.rs.core.UriInfo;
import javax.ws.rs.Consumes;
import javax.ws.rs.Produces;
import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.PUT;
import javax.ws.rs.QueryParam;
import session.PaymentSessionLocal;

/**
 * REST Web Service
 *
 * @author Vaibhav Bhagat
 */
@Path("generic")
public class GenericResource {

    PaymentSessionLocal paymentSession = lookupPaymentSessionLocal();

    @Context
    private UriInfo context;

    /**
     * Creates a new instance of GenericResource
     */
    public GenericResource() {
    }

    /**
     * Retrieves representation of an instance of WebServices.GenericResource
     *
     * @return an instance of java.lang.String
     */
    @GET
    @Produces("application/json")
    public String getJson() {
        //TODO return proper representation object
        throw new UnsupportedOperationException();
    }

    @GET
    @Produces("application/json")
    @Path("logindata")
    public String getLoginData(@QueryParam("username") String username, @QueryParam("password") String password) {
//  http://localhost:8080/PaymentCollection-war/webresources/generic/logindata?username=&password=

        String json = null;

        GsonBuilder builder = new GsonBuilder();
        Gson gson = builder.create();
        ErrorResponse errorResponse = new ErrorResponse();

        if (username != null || password != null) {

            if (paymentSession.verifySalesman(username, password) == true) {
                SalesMan salesman = paymentSession.getSalesman(username, password);

                if (salesman != null) {
                    Login login = new Login();
                    login.setId(salesman.getId());
                    login.setUsername(salesman.getS_emailid());
                    login.setPassword(salesman.getS_password());

                    json = gson.toJson(login);
                } else {
                    errorResponse.setResponse("false");
                    json = gson.toJson(errorResponse);
                }

            } else {
                errorResponse.setResponse("false");
                json = gson.toJson(errorResponse);
            }
        }
        return json;
    }

    @GET
    @Produces("application/json")
    @Path("salesmanroutes")
    public String getRoutes(@QueryParam("sid") long salesmanId) {
//  http://localhost:8080/PaymentCollection-war/webresources/generic/salesmanroutes?sid=

        String json;

        GsonBuilder builder = new GsonBuilder();
        Gson gson = builder.create();
        ErrorResponse errorResponse = new ErrorResponse();

        SalesMan salesman = paymentSession.getSalesmanByID(salesmanId);

        if (salesman != null) {
            SalesmanRoutes sRoutes = new SalesmanRoutes();
            sRoutes.setRoutes(salesman.getS_route());

            json = gson.toJson(sRoutes);
        } else {
            errorResponse.setResponse("false");
            json = gson.toJson(errorResponse);
        }
        return json;
    }

    @GET
    @Produces("application/json")
    @Path("routecustomers")
    public String getCustomers(@QueryParam("rid") long routeId) {
//  http://localhost:8080/PaymentCollection-war/webresources/generic/routecustomers?rid=

        String json;

        GsonBuilder builder = new GsonBuilder();
        Gson gson = builder.create();
        ErrorResponse errorResponse = new ErrorResponse();

        Route route = paymentSession.getRouteByID(routeId);

        if (route != null) {
            List<Customer> customers = paymentSession.getCustomersByRoute(route);

            if (customers != null) {
                RouteCustomers rCustomers = new RouteCustomers();
                rCustomers.setCustomers(customers);

                json = gson.toJson(rCustomers);
            } else {
                errorResponse.setResponse("false");
                json = gson.toJson(errorResponse);
            }
        } else {
            errorResponse.setResponse("false");
            json = gson.toJson(errorResponse);
        }
        return json;
    }

    @GET
    @Produces("application/json")
    @Path("receivepayment")
    public String recievePayment(@QueryParam("amount") double recievepayment,
            @QueryParam("location") String gpslocation, @QueryParam("date") String date,
            @QueryParam("sid") Long salesmanId, @QueryParam("cid") Long customerId) {
//  http://localhost:8080/PaymentCollection-war/webresources/generic/receivepayment?amount=&location=&date=&sid=&cid=

        String json;

        GsonBuilder builder = new GsonBuilder();
        Gson gson = builder.create();
        ErrorResponse errorResponse = new ErrorResponse();

        if (salesmanId != null) {
            SalesMan salesman = paymentSession.getSalesmanByID(salesmanId);
            if (salesman != null) {
                if (customerId != null) {
                    Customer customer = paymentSession.getCustomerByID(customerId);
                    if (customer != null) {
                        if (!gpslocation.equals("")) {
                            if (!date.equals("")) {
                                if (recievepayment != 0) {
                                    if (paymentSession.insertPayment(recievepayment, gpslocation,
                                            date, salesman, customer) == true) {
                                        errorResponse.setResponse("true");
                                        json = gson.toJson(errorResponse);
                                    } else {
                                        errorResponse.setResponse("false");
                                        json = gson.toJson(errorResponse);
                                    }
                                } else {
                                    errorResponse.setResponse("Received Amount is Zero");
                                    json = gson.toJson(errorResponse);
                                }
                            } else {
                                errorResponse.setResponse("Date can not be null");
                                json = gson.toJson(errorResponse);
                            }
                        } else {
                            errorResponse.setResponse("No GPS location");
                            json = gson.toJson(errorResponse);
                        }
                    } else {
                        errorResponse.setResponse("Invalid customer");
                        json = gson.toJson(errorResponse);
                    }
                } else {
                    errorResponse.setResponse("Customer Id should not be null");
                    json = gson.toJson(errorResponse);
                }
            } else {
                errorResponse.setResponse("Invalid salesman");
                json = gson.toJson(errorResponse);
            }
        } else {
            errorResponse.setResponse("Salesman Id should not be null");
            json = gson.toJson(errorResponse);
        }
        return json;
    }

    @GET
    @Produces("application/json")
    @Path("changepassword")
    public String changePassword(@QueryParam("sid") long salesmanId, @QueryParam("oldpassword") String oldPassword,
            @QueryParam("newpassword") String newPassword) {
//  http://localhost:8080/PaymentCollection-war/webresources/generic/changepassword?sid=&oldpassword=&newpassword=

        String json;

        GsonBuilder builder = new GsonBuilder();
        Gson gson = builder.create();
        ErrorResponse errorResponse = new ErrorResponse();

        SalesMan salesman = paymentSession.getSalesmanByID(salesmanId);

        if (salesman != null) {
            if (!oldPassword.equals("") && paymentSession.verifySalesmanOldPassowrd(salesman, oldPassword)
                    == true) {
                if (!newPassword.equals("")) {
                    paymentSession.changeSalesmanPassword(salesman, newPassword);

                    errorResponse.setResponse("true");
                    json = gson.toJson(errorResponse);
                } else {
                    errorResponse.setResponse("New password should not be null");
                    json = gson.toJson(errorResponse);
                }
            } else {
                errorResponse.setResponse("Incorrect old password");
                json = gson.toJson(errorResponse);
            }
        } else {
            errorResponse.setResponse("No salesman exists");
            json = gson.toJson(errorResponse);
        }
        return json;
    }

    /**
     * PUT method for updating or creating an instance of GenericResource
     *
     * @param content representation for the resource
     * @return an HTTP response with content of the updated or created resource.
     */
    @PUT
    @Consumes("application/json")
    public void putJson(String content) {
    }

    private PaymentSessionLocal lookupPaymentSessionLocal() {
        try {
            javax.naming.Context c = new InitialContext();
            return (PaymentSessionLocal) c.lookup("java:global/PaymentCollection/PaymentCollection-ejb/PaymentSession!session.PaymentSessionLocal");
        } catch (NamingException ne) {
            Logger.getLogger(getClass().getName()).log(Level.SEVERE, "exception caught", ne);
            throw new RuntimeException(ne);
        }
    }
}
