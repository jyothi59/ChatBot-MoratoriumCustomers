package com.chatbot.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.chatbot.dao.InfoDao;
import com.chatbot.dao.InfoDaoClass;
import com.chatbot.dto.LoginDTO;
import com.chatbot.model.FeedBack;


/**
 * Servlet implementation class SaveInfoController
 */
@WebServlet("/saveInfo")
public class SaveInfoController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private InfoDao dao=null;
  /**
   * @see HttpServlet#HttpServlet
   */
  public SaveInfoController() {
      
      // TODO Auto-generated constructor stub
  	dao=new InfoDaoClass();
  }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		//RequestDispatcher dispatcher=request.getRequestDispatcher("/welcome.jsp");
		//dispatcher.forward(request, response);

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// TODO Auto-generated method stub
		
		/*
		String username=request.getSession().getAttribute("username").toString();
		Status s=new Status();
		s.setWant(request.getParameter("r_want"));
		String loans[]=request.getParameterValues("r_select_loan");
		String clear[] = request.getParameterValues("r_clear_loan");
		s.setSettle(request.getParameter("r_settle_loan"));
		s.setEco(request.getParameter("r_eco"));
		s.setHealth(request.getParameter("r_health"));
		s.setMental_health(request.getParameter("mental_health"));
		s.setExtra_loan(request.getParameter("extra_loan"));
		//s.set (request.getParameterValues("r_select_loan"));
		
		//RequestDispatcher dispatcher=request.getRequestDispatcher("/register.jsp");
		//dispatcher.forward(request, response);
		
		String result=dao.collectData(s,username,loans,clear);
		if(result.equals("true") || result.equals("already")) {
			
			response.sendRedirect("welcome.jsp");
		}
		
		
		if(result.equals("error")) {
			response.sendRedirect("welcome?status=error");
		}
		*/
		LoginDTO l=(LoginDTO)request.getSession().getAttribute("user");
		String b[]=request.getParameterValues("selected_loans");
		if(b!=null) {
			System.out.println(request.getParameter("reason"));
			System.out.println(request.getParameter("r_want"));
			System.out.println(request.getParameter("physical_health"));
			System.out.println(request.getParameter("mental_health"));
			System.out.println(request.getParameter("extra_loan"));
			System.out.println(request.getParameter("salary"));
			System.out.println(request.getParameterValues("selected_loans"));
			FeedBack fb=new FeedBack(l.getAcc_no(),request.getParameter("r_want"),request.getParameter("reason"),request.getParameter("salary"),request.getParameter("physical_health"),request.getParameter("mental_health"),request.getParameter("extra_loan"),b);
			//System.out.println(dao.saveData(fb));
			String result=dao.saveData(fb);
			
				HttpSession session =request.getSession();
				session.setAttribute("status_of_application",result);
				response.sendRedirect("sucess.jsp");

		}
		else {	
		 response.sendRedirect("welcome");
			
		}
	}


}
