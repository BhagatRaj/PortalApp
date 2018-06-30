package com.tutorials.usereg.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.tutorials.bean.CreditCardBean;
import com.tutorials.usereg.service.UserRegService;
import com.tutorials.userregDao.UserRegisterDAO;
import com.tutorials.userregbean.UserRegBean;


@Service("userRegService")
public class UserRegServiceImpl implements UserRegService {

	
	@Autowired
	private UserRegisterDAO userRegisterDAO;
	
	@Transactional
	public String addUserRegDetails(UserRegBean userRegBean) {
		return userRegisterDAO.addUserRegDetails(userRegBean);
	}


	public UserRegBean viewMyProfile(String userEmai_id) {
		
		return userRegisterDAO.viewProfile(userEmai_id);
	}

	
}
