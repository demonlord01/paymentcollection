/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package WebServices;

import Entities.SalesMan;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
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
//  http://localhost:8080/PaymentCollection-war/webresources/generic/logindata

        SalesMan salesman = paymentSession.getSalesman(username, password);
        String json = null;
        if (salesman != null) {
            Login login = new Login();
            login.setId(salesman.getId());
            login.setUsername(salesman.getS_emailid());
            login.setPassword(salesman.getS_password());
            
            GsonBuilder builder = new GsonBuilder();
            Gson gson = builder.create();
            json = gson.toJson(login);
        }
        return json;
    }

    @GET
    @Produces("application/json")
    @Path("salesmanroutes")
    public String getRoutes(@QueryParam("id") long salesmanId) {
//  http://localhost:8080/PaymentCollection-war/webresources/generic/salesmanroutes

        SalesMan salesman = paymentSession.getSalesmanByID(salesmanId);
        String json = null;
        if (salesman != null) {
            SalesmanRoutes sRoutes = new SalesmanRoutes();
            sRoutes.setRoutes(salesman.getS_route());
            
            GsonBuilder builder = new GsonBuilder();
            Gson gson = builder.create();
            json = gson.toJson(sRoutes);
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
