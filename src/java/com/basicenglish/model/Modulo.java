/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.basicenglish.model;

import java.util.Date;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.PrePersist;
import javax.persistence.PreUpdate;
import javax.persistence.Table;
import javax.persistence.Temporal;

/**
 *
 * @author rodri
 */
@Entity
@Table (name = "modulo")
public class Modulo {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int id;
    @Column
    private String nomemodulo;
    
    @Column
    @Temporal(javax.persistence.TemporalType.TIME)
    private Date time;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNomemodulo() {
        return nomemodulo;
    }

    public void setNomemodulo(String nomemodulo) {
        this.nomemodulo = nomemodulo;
    }

    public Date getTime() {
        return time;
    }

    public void setTime(Date time) {
        this.time = time;
    }
    
    @PrePersist
    @PreUpdate
    public void montaTempo(){
        this.setTime(new Date());
    }
    
}
