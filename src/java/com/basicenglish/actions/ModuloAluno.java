/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.basicenglish.actions;

import com.basicenglish.controller.ControllerSessao;
import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ModuloAluno")
public class ModuloAluno extends HttpServlet{
    
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        if (ControllerSessao.islogado(req)){
            RequestDispatcher rd = req.getRequestDispatcher("/WEB-INF/pages/Modulo_aluno.jsp");
            rd.forward(req,resp);
    }
        else {
            resp.sendRedirect("login");
        }
}
}