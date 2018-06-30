package com.tutorials.CreditDao;

import java.util.List;

import com.tutorials.bean.CreditCardBean;

public interface CreditDao {

	public CreditCardBean creditDetails(CreditCardBean creditCardBean, String userName);
	
	public CreditCardBean getcreditDetails(CreditCardBean cardBean, String userName, String test);
	public List<CreditCardBean> getcardNumber(String cardName);
	public List <CreditCardBean>findCardDetailsForUser(String User);
}
