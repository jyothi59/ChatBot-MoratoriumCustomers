package com.chatbot.controller;

import java.io.IOException;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.chatbot.dao.LoginDao;
import com.chatbot.dao.LoginDaoClass;
import com.chatbot.dto.LoginDTO;

/**
 * Servlet implementation class WelcomeController
 */
@WebServlet("/welcome")
public class WelcomeController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private LoginDao dao=null;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public WelcomeController() {
    	dao=new LoginDaoClass();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//RequestDispatcher dispatcher=request.getRequestDispatcher("/welcome.jsp");
		//dispatcher.forward(request, response);
		
		//response.getWriter().append("Served at: ").append(request.getContextPath());
			LoginDTO l=(LoginDTO)request.getSession().getAttribute("user");
			System.out.println(l.getAcc_no());
			request.getSession().setAttribute("info",dao.getInfo(l.getAcc_no()));
			System.out.println(request.getSession().getAttribute("info"));
			System.out.println("2");
			response.sendRedirect("welcome.jsp");	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method string
		doGet(request, response);
	}

}
