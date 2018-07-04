/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.basicenglish.controller.impl;

import com.basicenglish.controller.ControllerUsuario;
import com.basicenglish.dao.DAO;
import com.basicenglish.model.Usuario;

/**
 *
 * @author rodri
 */
public class ControllerUsuarioImpl implements ControllerUsuario {

    DAO dao;

    public ControllerUsuarioImpl() {
        this.dao = new DAO();
    }
    
    @Override
    public void adicionarUsuario(Usuario usuario) {
        this.dao.saveEntity(usuario);
    }

    @Override
    public void atualizarUsuario(Usuario usuario) {
        this.dao.atualizarEntity(usuario);
    }

    @Override
    public void deletarUsuario(Usuario usuario) {
         this.dao.deleteEntity(usuario);
    }

    @Override
    public Usuario findUsuarioById(int id) {
        return (Usuario) this.dao.findById(Usuario.class, id);
    }
    
}
