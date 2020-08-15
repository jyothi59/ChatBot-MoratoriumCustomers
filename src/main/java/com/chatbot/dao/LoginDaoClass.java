package com.chatbot.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.chatbot.connection.DBConnect;
import com.chatbot.dto.AccountDTO;
import com.chatbot.dto.LoginDTO;
import com.chatbot.model.Balance;
import com.chatbot.model.Loan;
import com.chatbot.model.Transaction;


public class LoginDaoClass implements LoginDao {
	Connection con = null;
	PreparedStatement preparedStatement = null;
	ResultSet resultSet = null;
	
	
	public LoginDTO authenticate(LoginDTO l) {
		String query="select * from bank.customers where username=? and password=?";
		try {
			con=DBConnect.openConnection();
			//System.out.println(l.getUsername()+"\n"+l.getPassword());
			preparedStatement=con.prepareStatement(query);
			preparedStatement.setString(1, l.getUsername());
			preparedStatement.setString(2,l.getPassword());
			resultSet=preparedStatement.executeQuery();
			System.out.println(resultSet);
			if(resultSet.next()) {
				System.out.println("dao");
				l.setAcc_no(resultSet.getString("acc_no"));
				l.setStatus("true");
				return l;
			}
			else {
				l.setStatus("false");
				return l;
			}
		}
		catch(Exception e) {
			e.printStackTrace();
			System.out.println("db");
			
			
		}
		l.setStatus("error");
		return l;
		
	}
	
	public AccountDTO getInfo(String acc_no) {
		AccountDTO a=new AccountDTO();
		String query1="select current_balance,available_balance from bank.customers where acc_no=?";
		String query2="select * from bank.transaction where acc_no=? and date > date_sub(now(),Interval 6 month)";
		String query3="select * from bank.loan where acc_no=?";
		try {
			con=DBConnect.openConnection();
			preparedStatement=con.prepareStatement(query1);
			preparedStatement.setString(1, acc_no);
			resultSet=preparedStatement.executeQuery();
			if(resultSet.next()) {
			Balance b=new Balance();
			b.setAvailable_balance(resultSet.getFloat("current_balance")); 
			b.setCurrent_balance(resultSet.getFloat("available_balance")); 
			a.setBalance(b);
			preparedStatement=con.prepareStatement(query2);
			preparedStatement.setString(1, acc_no);
			resultSet=preparedStatement.executeQuery();
			List<Transaction> t=new ArrayList<Transaction>();
			while(resultSet.next()) {
				Transaction x=new Transaction();
				x.setDate(resultSet.getDate("date"));
				x.setName(resultSet.getString("name"));
				x.setDb_cr(resultSet.getString("db/cr"));
				x.setAmount(resultSet.getFloat("amount"));
				t.add(x);
				}
			a.setTransactions(t);
			preparedStatement=con.prepareStatement(query3);
			preparedStatement.setString(1, acc_no);
			resultSet=preparedStatement.executeQuery();
			List<Loan> l=new ArrayList<Loan>();
			while(resultSet.next()) {
				Loan x=new Loan();
				x.setLoan_no(resultSet.getString("loan_no"));
				x.setLoan_type(resultSet.getString("loan_type"));
				x.setLimit(resultSet.getFloat("limit"));
				x.setAmount(resultSet.getFloat("amount_paid"));
				x.setRpa(resultSet.getFloat("rate_of_interest"));
				x.setCurrency(resultSet.getString("currency"));
				x.setApplied_for_moratorium_policy(resultSet.getString("status_moratorium_policy"));
				
				l.add(x);
				}
			a.setLoans(l);
			}
			return a;
	
		}catch(Exception e) {
			e.printStackTrace();
			return a;
			
		}
			
		
	}
	
	

}
