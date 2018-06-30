package com.tutorials.userregDao;

import java.util.List;

import com.tutorials.bean.CreditCardBean;
import com.tutorials.userregbean.UserRegBean;

public interface UserRegisterDAO {

	
	public String addUserRegDetails(UserRegBean userRegBean);
	public UserRegBean viewProfile(String userEmai_id);
	
}
