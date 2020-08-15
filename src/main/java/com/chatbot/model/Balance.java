package com.chatbot.model;

public class Balance {
	private float current_balance;
	private float available_balance;
	public float getCurrent_balance() {
		return current_balance;
	}
	public void setCurrent_balance(float current_balance) {
		this.current_balance = current_balance;
	}
	public float getAvailable_balance() {
		return available_balance;
	}
	public void setAvailable_balance(float available_balance) {
		this.available_balance = available_balance;
	}
	@Override
	public String toString() {
		return "BalanceDTO [current_balance=" + current_balance + ", available_balance=" + available_balance + "]";
	}

}
