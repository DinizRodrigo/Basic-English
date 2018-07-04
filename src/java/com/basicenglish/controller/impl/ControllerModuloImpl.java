/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.basicenglish.controller.impl;

import com.basicenglish.controller.ControllerModulo;
import com.basicenglish.dao.DAO;
import com.basicenglish.model.Modulo;
import java.util.List;

/**
 *
 * @author rodri
 */
public class ControllerModuloImpl implements ControllerModulo{
    private DAO dao;
    public ControllerModuloImpl (){
        this.dao = new DAO();
        
    }
    
    
    @Override
    public void salvarModulo(Modulo modulo) {
       this.dao.saveEntity(modulo);
    }
    
    @Override
    public void excluirModulo(Modulo modulo){
       this.dao.deleteEntity(modulo);
    }

    @Override
    public List<Modulo> buscarTodos() {
        return (List) this.dao.findAll(Modulo.class);
    }

    @Override
    public Modulo buscarPorId(int id) {
        return (Modulo) this.dao.findById(Modulo.class, id);
    }

    @Override
    public void atualizarModulo(Modulo modulo) {
        this.dao.atualizarEntity(modulo);
    }
    
    
}
