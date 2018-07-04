/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.basicenglish.controller;

import com.basicenglish.model.Modulo;
import java.util.List;

/**
 *
 * @author rodri
 */
public interface ControllerModulo {
    
    Modulo buscarPorId(int id);
    
    void salvarModulo (Modulo modulo);
    
    void atualizarModulo(Modulo modulo);
    
    void excluirModulo (Modulo modulo);
     
    
    List<Modulo> buscarTodos();
    
    
    
}
