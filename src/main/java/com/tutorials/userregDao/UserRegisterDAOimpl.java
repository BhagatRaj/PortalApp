package com.tutorials.userregDao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.tutorials.userregbean.UserRegBean;

@Repository("userRegisterDAO")

public class UserRegisterDAOimpl implements UserRegisterDAO{
	
	@Autowired
	private SessionFactory sessionFactory;

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	public String addUserRegDetails(UserRegBean userRegBean) {
		Session session=sessionFactory.getCurrentSession();
		session.persist(userRegBean);
		return "save";
	}

}
