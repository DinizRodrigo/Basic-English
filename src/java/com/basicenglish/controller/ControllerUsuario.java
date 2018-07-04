/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.basicenglish.controller;

import com.basicenglish.model.Usuario;

/**
 *
 * @author rodri
 */
public interface ControllerUsuario {
    
    void adicionarUsuario(Usuario usuario);
    
    void atualizarUsuario(Usuario usuario);
    
    void deletarUsuario(Usuario usuario);
            
    Usuario findUsuarioById(int id);
    
}
