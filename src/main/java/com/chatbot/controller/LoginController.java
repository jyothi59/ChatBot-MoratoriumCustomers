package com.chatbot.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.chatbot.dao.LoginDao;
import com.chatbot.dao.LoginDaoClass;
import com.chatbot.dto.LoginDTO;


/**
 * Servlet implementation class LoginController
 */
@WebServlet("/login")
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private LoginDao dao=null;
	
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginController() {
    	dao=new LoginDaoClass();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.getSession().setAttribute("status", " ");
		RequestDispatcher dispatcher=request.getRequestDispatcher("/login.jsp");
		dispatcher.forward(request, response);
			
			
		}
		
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		LoginDTO l=new LoginDTO(request.getParameter("username"),request.getParameter("password"));
		System.out.println(l.getUsername()+"\n"+l.getPassword());
		LoginDTO result=dao.authenticate(l);
		String status=result.getStatus();
		if(status.equals("true")) {
			HttpSession session =request.getSession();
			session.setAttribute("user",result);
			session.setAttribute("info",dao.getInfo(result.getAcc_no()));
			session.setAttribute("chatbotErrorMessage","");
			response.sendRedirect("welcome.jsp");
		}
		if(result.getStatus().equals("false")) {
			HttpSession session =request.getSession();
			session.setAttribute("status", "incorrect username or  password ");
			response.sendRedirect("login.jsp");
		}
		if(result.getStatus().equals("error")) {
			response.sendRedirect("login.jsp");
		}
			
		}
	}


