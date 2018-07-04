/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.basicenglish.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

/**
 *
 * @author rodri
 */
public class ControllerSessao {
    public static boolean islogado(HttpServletRequest req){
        HttpSession sessao = req.getSession(false);
        return sessao!=null && sessao.getAttribute("login")!= null;
        
    }
    
}
