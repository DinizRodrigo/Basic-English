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
import javax.servlet.http.HttpSession;

@WebServlet("/login")
public class LoginAction extends HttpServlet{
    
     @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
            RequestDispatcher rd = req.getRequestDispatcher("/WEB-INF/pages/login.jsp");
            rd.forward(req,resp);
        }
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
         String user= req.getParameter("user");
         String password= req.getParameter("senha");
         if (user.equals("admin")&& password.equals("admin")){
             HttpSession sessao= req.getSession();
             sessao.setAttribute("login", user);
             resp.sendRedirect("/Basic_English");
         }
         else{
            RequestDispatcher rd = req.getRequestDispatcher("/WEB-INF/pages/login.jsp");
            rd.forward(req,resp);
         }
    } 
} 