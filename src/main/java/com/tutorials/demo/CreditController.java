package com.tutorials.demo;



import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.security.auth.message.callback.PrivateKeyCallback.Request;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
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
			public String CreditDetails(Model model,  HttpServletRequest request) {
				//test for git
				//rajan
				CreditCardBean creditCardBean=null;
				List<CreditCardBean> cardList=null;
				
				HttpSession session=request.getSession(true);
				String userName=(String)session.getAttribute("userName");
				Map<String, List> cardListmap=new HashMap<>();
				List<CreditCardBean> creditCardlist=new ArrayList<CreditCardBean>();
			/*	creditCardlist=creditDao.getcreditDetails(creditCardBean,userName,"addEmi");
				
				
				if(creditCardlist.size()>0) {
					
					Iterator iterator=creditCardlist.iterator();
					
					while(iterator.hasNext()) {
						creditCardBean=(CreditCardBean)iterator.next();
						cardList=new ArrayList<CreditCardBean>();
						cardList.add(creditCardBean);
						cardListmap.put(userName, cardList);
					}
				}*/
				model.addAttribute(cardListmap);
				model.addAttribute("creditCardBean",creditCardBean);
				return "CreditCardDetails";
			}
			//for git bash
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
				return "showCreditDetails";
			}

			@RequestMapping(value="/showCreditDetialsForCard", method = RequestMethod.GET)
			public @ResponseBody List<CreditCardBean> showCreditDetialsForCard(@RequestParam("cardName")String cardName, @RequestParam("cardNum")String cardNum,  @RequestParam("cardDate")String cardDate, HttpServletRequest request) {
				HttpSession session=request.getSession(true);
				CreditCardBean cardBean=new CreditCardBean();
				String userName=(String)session.getAttribute("userName");
				List showCreditList=new ArrayList();
				
				cardBean.setCardName(cardName);
				cardBean.setCardNum(cardNum);
				cardBean.setCardDate(cardDate);
				CreditCardBean cardBean2=new CreditCardBean();
				cardBean2=creditDao.getcreditDetails(cardBean,userName,"showEmi");				
				showCreditList.add(cardBean2.getCardName());
				showCreditList.add(cardBean2.getCardNum());
				showCreditList.add(cardBean2.getCreditExpAm());
				showCreditList.add(cardBean2.getCreditExpMonth());
				showCreditList.add(cardBean2.getComment());
				showCreditList.add(cardBean2.getCardType());
				showCreditList.add(cardBean2.getUserName());
				
				request.setAttribute("showCreditList", showCreditList);
				
				return showCreditList;
			}
}
