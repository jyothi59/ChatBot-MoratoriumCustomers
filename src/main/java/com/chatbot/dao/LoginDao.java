package com.chatbot.dao;

import com.chatbot.dto.AccountDTO;
import com.chatbot.dto.LoginDTO;

public interface LoginDao {
	
	public LoginDTO authenticate(LoginDTO l);
	public AccountDTO getInfo(String acc_no);

}
