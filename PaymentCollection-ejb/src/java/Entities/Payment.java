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
public class Payment implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;
    private double p_recievepayment;
    private String p_gpslocation;
    private String p_date;
    @ManyToOne
    private SalesMan p_salesman;
    @ManyToOne
    private Customer p_customer;

    public double getP_recievepayment() {
        return p_recievepayment;
    }

    public void setP_recievepayment(double p_recievepayment) {
        this.p_recievepayment = p_recievepayment;
    }

    public String getP_gpslocation() {
        return p_gpslocation;
    }

    public void setP_gpslocation(String p_gpslocation) {
        this.p_gpslocation = p_gpslocation;
    }

    public String getP_date() {
        return p_date;
    }

    public void setP_date(String p_date) {
        this.p_date = p_date;
    }

    public SalesMan getP_salesman() {
        return p_salesman;
    }

    public void setP_salesman(SalesMan p_salesman) {
        this.p_salesman = p_salesman;
    }

    public Customer getP_customer() {
        return p_customer;
    }

    public void setP_customer(Customer p_customer) {
        this.p_customer = p_customer;
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
        if (!(object instanceof Payment)) {
            return false;
        }
        Payment other = (Payment) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "Entities.Payment[ id=" + id + " ]";
    }
    
}
