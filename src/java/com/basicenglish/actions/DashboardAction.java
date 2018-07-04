/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.basicenglish.actions;

import com.basicenglish.contexto.DashboardContext;
import com.basicenglish.controller.ControllerSessao;
import com.basicenglish.model.Usuario;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author rodri
 */
@WebServlet("")
public class DashboardAction extends HttpServlet{
    private DashboardContext context;
    
     @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        if (ControllerSessao.islogado(req)){
        
            RequestDispatcher rd = req.getRequestDispatcher("/WEB-INF/pages/dashboard.jsp");
            context = new DashboardContext();
        
            /*context.setUsuarios(usuarios);
            req.setAttribute("contexto", context);*/
            rd.forward(req, resp);
        }
        else {
            resp.sendRedirect("login");
        }
    } 
    
}
