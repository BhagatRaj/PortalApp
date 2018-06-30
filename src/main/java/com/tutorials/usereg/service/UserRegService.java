package com.tutorials.usereg.service;

import org.springframework.stereotype.Service;

import com.tutorials.userregbean.UserRegBean;

@Service
public interface UserRegService {

	
	public String addUserRegDetails(UserRegBean userRegBean);
	
	public UserRegBean viewMyProfile(String userEmai_id); 
	
}
