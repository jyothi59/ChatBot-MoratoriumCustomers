package com.chatbot.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLIntegrityConstraintViolationException;
import java.sql.Timestamp;
import java.util.Calendar;

import com.chatbot.connection.DBConnect;
import com.chatbot.model.Customer;

public class RegisterDaoImp implements RegisterDao {
	Connection con=null;
	PreparedStatement ps=null;

	public String register(Customer c) {
		String query="insert into customers(acc_no,first_name,last_name,username,password,gender,email,phone_no,occupation,income_per_annum,address,aadhar_no,city,state,pincode,created_on) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
		System.out.println("1");
		try {
		con=DBConnect.openConnection();
		ps=con.prepareStatement(query);
		System.out.println("query");
		ps.setString(1, c.getAcc_no());
		ps.setString(2, c.getFirst_name());
		ps.setString(3, c.getLast_name());
		ps.setString(4, c.getUsername());
		ps.setString(5, c.getPassword());
		ps.setString(6, c.getGender());
		ps.setString(7, c.getEmail());
		ps.setString(8, c.getPhone_no());
		ps.setString(9, c.getOccupation());
		ps.setString(10, c.getIncome_per_annum());
		ps.setString(11, c.getAddress());
		ps.setString(12, c.getAadhar_no());
		ps.setString(13, c.getCity());
		ps.setString(14, c.getState());
		ps.setString(15, c.getPincode());
		ps.setTimestamp(16, new Timestamp(Calendar.getInstance().getTime().getTime()));
		System.out.println("2");
		int i= ps.executeUpdate();
		System.out.println("3");
		if(i!=0)
		{	System.out.println("5");
			return"success";
		}
	}
		catch(SQLIntegrityConstraintViolationException e) {
			return "this account is already existed!!!";
			
		}
		catch(Exception e)
        {
           e.printStackTrace();
        }       
        return "Oops.. Something went wrong there..!";
	}


}
