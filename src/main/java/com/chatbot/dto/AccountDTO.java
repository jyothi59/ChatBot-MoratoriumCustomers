package com.chatbot.dto;

import java.util.List;

import com.chatbot.model.Balance;
import com.chatbot.model.Loan;
import com.chatbot.model.Transaction;

public class AccountDTO {
	private List<Transaction> transactions=null;
	private List<Loan> loans=null;
	private Balance balance=null;
	public List<Transaction> getTransactions() {
		return transactions;
	}
	public void setTransactions(List<Transaction> transactions) {
		this.transactions = transactions;
	}
	public List<Loan> getLoans() {
		return loans;
	}
	public void setLoans(List<Loan> loans) {
		this.loans = loans;
	}
	public Balance getBalance() {
		return balance;
	}
	public void setBalance(Balance balance) {
		this.balance = balance;
	}
	@Override
	public String toString() {
		return "AccountDTO [transactions=" + transactions + ", loans=" + loans + ", balance=" + balance + "]";
	}

}
