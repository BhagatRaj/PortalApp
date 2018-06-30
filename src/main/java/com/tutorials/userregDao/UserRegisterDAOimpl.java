package com.tutorials.userregDao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;

import com.tutorials.userregbean.UserRegBean;

@Repository("userRegisterDAO")

public class UserRegisterDAOimpl implements UserRegisterDAO{
	
	@Autowired
	private SessionFactory sessionFactory;

	@Autowired
	private HibernateTemplate hibernateTemplate;
	
	public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
		this.hibernateTemplate = hibernateTemplate;
	}

	
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	public String addUserRegDetails(UserRegBean userRegBean) {
		Session session=sessionFactory.getCurrentSession();
		session.persist(userRegBean);
		return "save";
	}

	@Override
	public UserRegBean viewProfile(String userEmai_id) {
		UserRegBean userRegBean=null;
		
		try {
		@SuppressWarnings("unchecked")
		List<Object> list=(List<Object>) hibernateTemplate.find("from UserRegBean where user_email=? ",userEmai_id);
		
		if(list!=null && list.size()>0) {
			userRegBean=(UserRegBean)list.get(0);
			return userRegBean;
		}
			
		}catch (Exception e) {
			throw e;
		}
		return null;
	}

	
}
