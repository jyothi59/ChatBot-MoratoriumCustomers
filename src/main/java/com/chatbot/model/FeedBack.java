package com.chatbot.model;

import java.util.Arrays;

public class FeedBack{
	private String acc_no;
	private String want;
	private String reason;
	private String present_salary;
	private String physical_health;
	private String mental_health;
	private String extra_loan;
	private String[] selected_loans;
	
	public FeedBack(String acc_no, String want, String reason, String present_salary, String physical_health,
			String mental_health, String extra_loan, String[] selected_loans) {
		super();
		this.acc_no = acc_no;
		this.want = want;
		this.reason = reason;
		this.present_salary = present_salary;
		this.physical_health = physical_health;
		this.mental_health = mental_health;
		this.extra_loan = extra_loan;
		this.selected_loans = selected_loans;
	}
	public String getAcc_no() {
		return acc_no;
	}
	public void setAcc_no(String acc_no) {
		this.acc_no = acc_no;
	}
	public String getWant() {
		return want;
	}
	public void setWant(String want) {
		this.want = want;
	}
	public String getReason() {
		return reason;
	}
	public void setReason(String reason) {
		this.reason = reason;
	}
	public String getPresent_salary() {
		return present_salary;
	}
	public void setPresent_salary(String present_salary) {
		this.present_salary = present_salary;
	}
	public String getPhysical_health() {
		return physical_health;
	}
	public void setPhysical_health(String physical_health) {
		this.physical_health = physical_health;
	}
	public String getMental_health() {
		return mental_health;
	}
	public void setMental_health(String mental_health) {
		this.mental_health = mental_health;
	}
	public String getExtra_loan() {
		return extra_loan;
	}
	public void setExtra_loan(String extra_loan) {
		this.extra_loan = extra_loan;
	}
	public String[] getSelected_loans() {
		return selected_loans;
	}
	public void setSelected_loans(String[] selected_loans) {
		this.selected_loans = selected_loans;
	}
	@Override
	public String toString() {
		return "FeedBack [acc_no=" + acc_no + ", want=" + want + ", reason=" + reason + ", present_salary="
				+ present_salary + ", physical_health=" + physical_health + ", mental_health=" + mental_health
				+ ", extra_loan=" + extra_loan + ", selected_loans=" + Arrays.toString(selected_loans) + "]";
	}
	
	
}