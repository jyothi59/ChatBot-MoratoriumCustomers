package com.chatbot.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLIntegrityConstraintViolationException;

import com.chatbot.connection.DBConnect;
import com.chatbot.model.Customer;
import com.chatbot.model.FeedBack;




public class InfoDaoClass implements InfoDao{
	Connection con = null;
	PreparedStatement preparedStatement = null;
	ResultSet resultSet = null;
	String acc=null;

	

	@Override
	public String saveData(FeedBack s) {
		// TODO Auto-generated method stub
		
		String query1="insert into status values(?,?,?,?,?,?,?)";
		System.out.println("1");
		String query2="update bank.loan set status_moratorium_policy=? where acc_no=? and loan_type=?";
		System.out.println("1");
		
		
		try {
			con=DBConnect.openConnection();
			preparedStatement=con.prepareStatement(query1);
			preparedStatement.setString(1, s.getAcc_no());
			preparedStatement.setString(2, s.getReason());
			preparedStatement.setString(3, s.getWant());
			preparedStatement.setString(4, s.getPresent_salary());
			preparedStatement.setString(5, s.getPhysical_health());
			preparedStatement.setString(6, s.getMental_health());
			preparedStatement.setString(7, s.getExtra_loan());
			int i= preparedStatement.executeUpdate();
			if(i!=0)
			{	
				for (String l :  s.getSelected_loans())
				{
					preparedStatement=con.prepareStatement(query2);
					preparedStatement.setString(1, "pending");
					preparedStatement.setString(2, s.getAcc_no());
					preparedStatement.setString(3, l);
					preparedStatement.executeUpdate();
				}
				return "success";
				
			}
			else {
				return "failed";
			}
		
	}
		catch(Exception e)
			{
				e.printStackTrace();
			}
		return "error";
	
	
	}	

}
