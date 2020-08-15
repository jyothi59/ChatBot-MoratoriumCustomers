package com.chatbot.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.chatbot.dao.RegisterDao;
import com.chatbot.dao.RegisterDaoImp;
import com.chatbot.model.Customer;

/**
 * Servlet implementation class RegisterController
 */
@WebServlet("/register")
public class RegisterController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private RegisterDao dao= null;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegisterController() {

        // TODO Auto-generated constructor stub
    	dao=new RegisterDaoImp();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		RequestDispatcher dispatcher=request.getRequestDispatcher("/register.jsp");
		dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		Customer c=new Customer();
		c.setAcc_no(request.getParameter("acc_no"));
		c.setFirst_name(request.getParameter("first_name"));
		c.setLast_name(request.getParameter("last_name"));
		c.setUsername(request.getParameter("username"));
		c.setPassword(request.getParameter("password"));
		c.setGender(request.getParameter("gender"));
		c.setEmail(request.getParameter("email"));
		c.setPhone_no(request.getParameter("phone_no"));
		c.setOccupation(request.getParameter("occupation"));
		c.setIncome_per_annum(request.getParameter("income_per_annum"));
		c.setAddress(request.getParameter("address"));
		c.setAadhar_no(request.getParameter("aadhar_no"));
		c.setCity(request.getParameter("city"));
		c.setState(request.getParameter("state"));
		c.setPincode(request.getParameter("pincode"));
		System.out.println(c.toString());
		String result=dao.register(c);
		if(result.equals("success")) {/*
			request.setAttribute("username", request.getParameter("username"));
			request.setAttribute("customer", c);*/
			request.getRequestDispatcher("/login.jsp").forward(request, response);
		}
		else {
			request.setAttribute("errMessage", result);
            request.getRequestDispatcher("/register.jsp").forward(request, response);
			
		}
		
	}

}
