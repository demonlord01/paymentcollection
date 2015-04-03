/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Entities;

import java.io.Serializable;
import java.util.List;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;

/**
 *
 * @author Vaibhav Bhagat
 */
@Entity
public class SalesMan implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;
    private String s_name;
    private String s_password;
    private Long s_phonenumber;
    private String s_emailid;
    private String s_address;
    private String s_dateofjoining;
    @OneToMany
    private List<Route> s_route;

    public String getS_name() {
        return s_name;
    }

    public void setS_name(String s_name) {
        this.s_name = s_name;
    }

    public String getS_password() {
        return s_password;
    }

    public void setS_password(String s_password) {
        this.s_password = s_password;
    }

    public Long getS_phonenumber() {
        return s_phonenumber;
    }

    public void setS_phonenumber(Long s_phonenumber) {
        this.s_phonenumber = s_phonenumber;
    }

    public String getS_emailid() {
        return s_emailid;
    }

    public void setS_emailid(String s_emailid) {
        this.s_emailid = s_emailid;
    }

    public String getS_address() {
        return s_address;
    }

    public void setS_address(String s_address) {
        this.s_address = s_address;
    }

    public String getS_dateofjoining() {
        return s_dateofjoining;
    }

    public void setS_dateofjoining(String s_dateofjoining) {
        this.s_dateofjoining = s_dateofjoining;
    }

    public List<Route> getS_route() {
        return s_route;
    }

    public void setS_route(List<Route> s_route) {
        this.s_route = s_route;
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
        if (!(object instanceof SalesMan)) {
            return false;
        }
        SalesMan other = (SalesMan) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "Entities.SalesMan[ id=" + id + " ]";
    }
    
}
