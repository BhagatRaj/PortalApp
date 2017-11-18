package com.tutorials.demo;



import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.tutorials.CreditDao.CreditDao;
import com.tutorials.bean.CreditCardBean;



@Controller
@RequestMapping("CreditController")
public class CreditController {
	

	@Autowired
	CreditDao creditDao;

	@RequestMapping(value="/CreditDetails")
	public String CreditDetails(Model model) {
		CreditCardBean creditCardBean=new CreditCardBean();
		model.addAttribute("creditCardBean",creditCardBean);
		return "CreditCardDetails";
	}

	@RequestMapping(value = "/submiCreditDetails", method = RequestMethod.POST)
	public String addStudent(@ModelAttribute("creditCardBean") @Valid CreditCardBean creditCardBean,	
				HttpServletRequest request) {
		
			HttpSession session=request.getSession(true);
			CreditCardBean cardBean=new CreditCardBean();
			String userName=(String)session.getAttribute("userName");
			cardBean=creditDao.creditDetails(creditCardBean,userName);
			return "Index";
		}
	
	@RequestMapping(value="/")
	public ModelAndView getCreditCardDetails(ModelAndView mav) {
		mav.setViewName("ShowEmiList");
		mav.addObject("emiList", "");
		return mav;
	}
	
	@RequestMapping(value="/showCreditDetails")
	public String showDetials()
	{
		return "";
		
	}
	
	@RequestMapping(value = "/exitFromCredit")
	public String Exit(Model model) {
		CreditCardBean creditCardBean=new CreditCardBean();
		model.addAttribute("creditCardBean", creditCardBean);
		return "Index";
	}
	
	
	@RequestMapping(value = "/showDetailsForCreditEmi")
	public String showDetailsForCreditEmi(Model model) {
		CreditCardBean creditCardBean=new CreditCardBean();
		model.addAttribute("creditCardBean", creditCardBean);
		return "showCreditCardDetails";
	}
	@RequestMapping(value="/showCreditDetialsForCard")
	public @ResponseBody String showDetails(@RequestParam("cardName")String cardName, @RequestParam("cardNum")String cardNum, HttpServletRequest request) {
		//String str=new String();
		HttpSession session=request.getSession(true);
		CreditCardBean cardBean=new CreditCardBean();
		String userName=(String)session.getAttribute("userName");
		List<CreditCardBean> emiListForCreditDetails=new ArrayList<CreditCardBean>();
		cardBean.setCardName(cardName);
		cardBean.setCardNum(cardNum);
		emiListForCreditDetails=creditDao.getcreditDetails(cardBean,userName);
		session.setAttribute("emiListForCreditDetails", emiListForCreditDetails);
		return null;
		
	}
}
