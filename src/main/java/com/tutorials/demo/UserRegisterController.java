package com.tutorials.demo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.tutorials.Utils.Encryption;
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

}
