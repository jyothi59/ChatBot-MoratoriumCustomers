package com.chatbot.model;

import java.sql.Date;

public class Transaction {
	private Date date;
	private String name;
	private String db_cr;
	private float amount;
	
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getDb_cr() {
		return db_cr;
	}
	public void setDb_cr(String db_cr) {
		this.db_cr = db_cr;
	}
	public float getAmount() {
		return amount;
	}
	public void setAmount(float amount) {
		this.amount = amount;
	}
	
	@Override
	public String toString() {
		return "TransactionDTO [date=" + date + ", name=" + name + ", db_cr=" + db_cr + ", amount=" + amount + "]";
	}

}
