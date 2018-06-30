package com.tutorials.demo;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.tutorials.Utils.Encryption;
import com.tutorials.bean.LoginBean;
import com.tutorials.usereg.service.UserRegService;
import com.tutorials.userregbean.UserRegBean;


@Controller
@RequestMapping("userRegController")
		public class UserRegisterController {
		
			@Autowired
			UserRegService userRegService;
			
			@RequestMapping(value = "/saverUserRegistration", method = RequestMethod.POST)
			    public String addUserRegsterDetails(@ModelAttribute("userRegister") UserRegBean userRegBean, Model model) {
					String str=null;
					userRegBean.setUser_Pass(Encryption.encrypt(userRegBean.getUser_Pass()));
					str=userRegService.addUserRegDetails(userRegBean);
					model.addAttribute("userSetupFlag",str);
					return "UserSetup";
			    }
		
			@RequestMapping(value="/viewMyProfile")
			public String viewMyProfile(ModelMap model, HttpServletRequest request,
						HttpServletResponse response) throws Exception {
					
					HttpSession session = request.getSession();
					LoginBean userSession = (LoginBean) session.getAttribute(com.tutorials.Utils.Constants.USER_SESSION_MODEL);
					String userEmai_id=(String)session.getAttribute(com.tutorials.Utils.Constants.USER_SESSION_EMAIL);
					
					
					if(userSession !=null) {
						UserRegBean regBean=null;
						
						try {
							regBean=userRegService.viewMyProfile(userEmai_id);
							model.put("regBeanModel", regBean);
							
						}catch (Exception e) {
							e.printStackTrace();
						}
					}else {
						
						//model.put(key, value)
					}
					
					return "viewProfile";
				}
}
