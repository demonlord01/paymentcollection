/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Entities;

import java.io.Serializable;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;

/**
 *
 * @author Vaibhav Bhagat
 */
@Entity
public class Customer implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;
    private String c_name;
    private Long c_phonenumber;
    private String c_emailid;
    private String c_address;
    private double c_duepayment;
    @ManyToOne
    private Route c_route;

    public String getC_name() {
        return c_name;
    }

    public void setC_name(String c_name) {
        this.c_name = c_name;
    }

    public Long getC_phonenumber() {
        return c_phonenumber;
    }

    public void setC_phonenumber(Long c_phonenumber) {
        this.c_phonenumber = c_phonenumber;
    }

    public String getC_emailid() {
        return c_emailid;
    }

    public void setC_emailid(String c_emailid) {
        this.c_emailid = c_emailid;
    }

    public String getC_address() {
        return c_address;
    }

    public void setC_address(String c_address) {
        this.c_address = c_address;
    }

    public double getC_duepayment() {
        return c_duepayment;
    }

    public void setC_duepayment(double c_duepayment) {
        this.c_duepayment = c_duepayment;
    }

    public Route getC_route() {
        return c_route;
    }

    public void setC_route(Route c_route) {
        this.c_route = c_route;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (id != null ? id.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Customer)) {
            return false;
        }
        Customer other = (Customer) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "Entities.Customer[ id=" + id + " ]";
    }
    
}
