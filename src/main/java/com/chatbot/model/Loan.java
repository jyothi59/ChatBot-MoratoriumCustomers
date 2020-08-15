package com.chatbot.model;

public class Loan {
	private String loan_no;
	private String loan_type;
	private float limit;
	private float amount;
	private float rpa;
	private String currency;
	private String applied_for_moratorium_policy;
	public String getLoan_no() {
		return loan_no;
	}
	public void setLoan_no(String loan_no) {
		this.loan_no = loan_no;
	}
	public String getLoan_type() {
		return loan_type;
	}
	public void setLoan_type(String loan_type) {
		this.loan_type = loan_type;
	}
	public float getLimit() {
		return limit;
	}
	public void setLimit(float limit) {
		this.limit = limit;
	}
	public float getAmount() {
		return amount;
	}
	public void setAmount(float amount) {
		this.amount = amount;
	}
	public float getRpa() {
		return rpa;
	}
	public void setRpa(float rpa) {
		this.rpa = rpa;
	}
	public String getCurrency() {
		return currency;
	}
	public void setCurrency(String currency) {
		this.currency = currency;
	}
	public String getApplied_for_moratorium_policy() {
		return applied_for_moratorium_policy;
	}
	public void setApplied_for_moratorium_policy(String applied_for_moratorium_policy) {
		this.applied_for_moratorium_policy = applied_for_moratorium_policy;
	}
	@Override
	public String toString() {
		return "Loan [loan_no=" + loan_no + ", loan_type=" + loan_type + ", limit=" + limit + ", amount=" + amount
				+ ", rpa=" + rpa + ", currency=" + currency + ", applied_for_moratorium_policy="
				+ applied_for_moratorium_policy + "]";
	}
	


}
