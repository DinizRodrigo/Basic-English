/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.basicenglish.actions;

import com.basicenglish.controller.ControllerModulo;
import com.basicenglish.controller.ControllerSessao;
import com.basicenglish.controller.impl.ControllerModuloImpl;
import com.basicenglish.model.Modulo;
import com.basicenglish.model.Usuario;
import java.io.IOException;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/IncluirModulo")
public class ModuloAction extends HttpServlet{
    private ControllerModulo controllermodulo;
    
    public ModuloAction(){
        
        this.controllermodulo = new ControllerModuloImpl();
    }
     @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        if (ControllerSessao.islogado(req)){
            RequestDispatcher rd = req.getRequestDispatcher("/WEB-INF/pages/Modulos.jsp");
            req.setAttribute("modulos", this.controllermodulo.buscarTodos());
            rd.forward(req,resp);
    }
         else {
            resp.sendRedirect("login");
        }
}
    @Override
     protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
         if (req.getParameterMap().containsKey("incluir")){
            Modulo modulo = new Modulo();
            modulo.setNomemodulo(req.getParameter("modulo"));
            this.controllermodulo.salvarModulo(modulo);
            this.doGet(req, resp);
         }
         else if (req.getParameterMap().containsKey("excluir")){
             for(String key : req.getParameterMap().keySet()){
                 if (key.contains("delete")){
                     int id = Integer.valueOf(key.split("-")[1]);
                     Modulo modulo = this.controllermodulo.buscarPorId(id);
                     this.controllermodulo.excluirModulo(modulo);
                 }
             }
            this.doGet(req, resp);
         }
         else if (req.getParameterMap().containsKey("atualizar")){
            if (req.getParameterMap().containsKey("podeAtualizar")){
                int id = Integer.valueOf(req.getParameter("modulo-id"));
                Modulo modulo = this.controllermodulo.buscarPorId(id);
                modulo.setNomemodulo(req.getParameter("novoNome"));
                this.controllermodulo.atualizarModulo(modulo);
            }
            this.doGet(req, resp);
         }
     }
}
