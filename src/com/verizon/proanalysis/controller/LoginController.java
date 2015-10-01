package com.verizon.proanalysis.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class LoginController
 */
@WebServlet("/LoginController")
public class LoginController extends HttpServlet {
    public LoginController() {
        super();
    }
    String userName;
	String password;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		userName = request.getParameter("userName");
		password = request.getParameter("password");
		if(userName != null && password != null && !userName.equals("") && !password.equals("")){
			HttpSession userSession = request.getSession(true);
			userSession.setAttribute("userSession", userName);
			request.getRequestDispatcher("dashboard.jsp").forward(request, response);
		}
	}
}
