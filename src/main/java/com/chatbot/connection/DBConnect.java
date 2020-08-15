package com.chatbot.connection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnect {
	private static final String URL="jdbc:mysql://localhost:3306/bank";
	private static final String DRIVER="com.mysql.cj.jdbc.Driver";
	private static final String USERNAME="root";
	private static final String PASSWORD="root123";
	private static java.sql.Connection conn=null;

	public static Connection openConnection() throws SQLException, ClassNotFoundException {
		
		//check the connection
		if(conn!=null) {
			return conn;
		}else {
			
			try {
				//load the driver 
				Class.forName(DRIVER);
				
				//get the connection
				conn = (Connection) DriverManager.getConnection(URL,USERNAME,PASSWORD);
			}
			catch(Exception e) {
				e.printStackTrace();
			}
			

			//return connection
			return conn;
		}
		
		
		
	}

}
