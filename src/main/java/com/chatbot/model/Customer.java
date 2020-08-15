package com.chatbot.model;

import java.sql.Timestamp;

public class Customer {
	private String acc_no;
	private String first_name;
	private String last_name;
	private String username;
	private String password;
	private String gender;
	private String email;
	private String phone_no;
	private String occupation;
	private String income_per_annum;
	private String address;
	private String aadhar_no;
	private String city;
	private String state;
	private String pincode;
	private float current_balance;
	private float available_balance;
	private Timestamp created_on;
	public String getAcc_no() {
		return acc_no;
	}
	public void setAcc_no(String acc_no) {
		this.acc_no = acc_no;
	}
	public String getFirst_name() {
		return first_name;
	}
	public void setFirst_name(String first_name) {
		this.first_name = first_name;
	}
	public String getLast_name() {
		return last_name;
	}
	public void setLast_name(String last_name) {
		this.last_name = last_name;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhone_no() {
		return phone_no;
	}
	public void setPhone_no(String phone_no) {
		this.phone_no = phone_no;
	}
	public String getOccupation() {
		return occupation;
	}
	public void setOccupation(String occupation) {
		this.occupation = occupation;
	}
	public String getIncome_per_annum() {
		return income_per_annum;
	}
	public void setIncome_per_annum(String income_per_annum) {
		this.income_per_annum = income_per_annum;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getAadhar_no() {
		return aadhar_no;
	}
	public void setAadhar_no(String aadhar_no) {
		this.aadhar_no = aadhar_no;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getPincode() {
		return pincode;
	}
	public void setPincode(String pincode) {
		this.pincode = pincode;
	}
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
	public Timestamp getCreated_on() {
		return created_on;
	}
	public void setCreated_on(Timestamp created_on) {
		this.created_on = created_on;
	}
	@Override
	public String toString() {
		return "Customer [acc_no=" + acc_no + ", first_name=" + first_name + ", last_name=" + last_name + ", username="
				+ username + ", password=" + password + ", gender=" + gender + ", email=" + email + ", phone_no="
				+ phone_no + ", occupation=" + occupation + ", income_per_annum=" + income_per_annum + ", address="
				+ address + ", aadhar_no=" + aadhar_no + ", city=" + city + ", state=" + state + ", pincode=" + pincode
				+ ", current_balance=" + current_balance + ", available_balance=" + available_balance + ", created_on="
				+ created_on + "]";
	}
	
}
