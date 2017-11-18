package com.tutorials.demo;

import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.tutorials.dao.PortalDao;
import com.tutorials.bean.AutoMobDataBean;
import com.tutorials.bean.AutoMobSaveBean;

import com.tutorials.bean.LaptopEmiBean;
import com.tutorials.bean.LoginBean;

/**
 * 
 * Handles requests for the application home page.
 */
@Controller

			public class HomeController {
				@Autowired
				PortalDao portalDao;
				@RequestMapping(value = "/", method = RequestMethod.GET)
					public String home(Model model) {
						LoginBean logBean = new LoginBean();
						model.addAttribute("logBean", logBean);
						return "LoginPage";
					}
			
				@RequestMapping(value = "/addStudent", method = RequestMethod.POST)
				public String addStudent(@ModelAttribute("logBean") @Valid LoginBean logBean, BindingResult result, Model model,
								HttpServletRequest request) {
							HttpSession session = request.getSession(true);
							if (result.hasErrors()) {
								return "LoginPage";
							}
							String validationfromDb;
							validationfromDb=portalDao.validateUserFromDb(logBean);
							// model.addAttribute("userName", logBean.getUserName());
							if("notValidated".equals(validationfromDb)) {
								request.setAttribute("notValidatedFlag", "Y");
								return "LoginPage";
							}
							session.setAttribute("userName", logBean.getUserName());
			 				return "Index";
						}
				
				@RequestMapping(value = "/showDetailsforAutMob")
				public @ResponseBody List<AutoMobDataBean> showDetailsforAutMob(@RequestParam("modelNum") String bikeModel,
								@RequestParam("datepicker") String year) {
							List list = new ArrayList();
							AutoMobDataBean autoMobDataBean = new AutoMobDataBean();
							autoMobDataBean = portalDao.findVehicleDetails(bikeModel, year, autoMobDataBean);
							list.add(autoMobDataBean.getModelNum());
							list.add(autoMobDataBean.getDatepicker());
							list.add(autoMobDataBean.getEngineCC());
							list.add(autoMobDataBean.getMileage());
							list.add(autoMobDataBean.getTopSpeed());
							return list;
						}
			
				@RequestMapping(value = "/showEmiList")
						public ModelAndView showEmiList(@RequestParam("userName") String userName, ModelAndView mav) {
							AutoMobSaveBean mobshowBean = new AutoMobSaveBean();
							List list = new ArrayList();
							if (null != userName && userName.equals("vicky")) {
					
								list = portalDao.findEmiOption(userName, mobshowBean);
							} else {
					
								mav.addObject("noList", "No Emi List for available User");
							}
					
							mav.setViewName("ShowEmiList");
							mav.addObject("emiList", list);
							return mav;
						}
			
				@RequestMapping(value = "/ShowAddEmiPage")
					public String AddDetails() {
						return "addEmiforAutMob";
					}
			
				@RequestMapping(value = "/addEmiforAutMob", method = RequestMethod.POST)
				public @ResponseBody String addEmiforAutMob(@RequestParam("month") String month,@RequestParam("amountPaid") String amountPaid, @RequestParam("paidDate") String paidDate,@RequestParam("bikeName") String bikeName)
						{
							AutoMobSaveBean autoMobSaveBean = new AutoMobSaveBean();
							autoMobSaveBean.setMonth(month);
							autoMobSaveBean.setAmountToPaid(amountPaid);
							autoMobSaveBean.setDateOfPaid(paidDate);
							autoMobSaveBean.setBikeName(bikeName);
							autoMobSaveBean = portalDao.saveEmiDetails(autoMobSaveBean);
							return "Data saved Successfully";
						}
				
				@RequestMapping(value="/doSetup")
					public @ResponseBody String doSetup(@RequestParam("userName")String userName,
							@RequestParam("userPass")String userPass,
								HttpServletRequest request){
								String success=portalDao.saveUserSetup(userName,userPass);
								return success;
						}
				
				@RequestMapping(value ="/showSetup")
					public String showSetupPage(Model model) {
						
						return "UserSetup";
				
					}
				
				@RequestMapping(value = "/Logout")
						public String Logout(Model model, HttpServletRequest request) {
							
							HttpSession httpSession=request.getSession();
							httpSession.removeAttribute("userName");
							LoginBean logBean = new LoginBean();
							model.addAttribute("logBean", logBean);
							return "LoginPage";
					
						}
			
				@RequestMapping(value = "/Exit")
						public String Exit(Model model) {
							LoginBean logBean = new LoginBean();
							model.addAttribute("logBean", logBean);
							return "Index";
						}
		
				@RequestMapping(value = "/showlaptopEmi")
				public String showlaptopEmi( Model model) {
					LaptopEmiBean laptopEmiBean =new LaptopEmiBean();
					model.addAttribute("laptopEmiBean",laptopEmiBean);
					return "lapTopEmiPage";
				}
		
				@RequestMapping(value = "/submitlaptopEmi")
				public String submitlaptopEmi( @ModelAttribute("laptopEmiBean") @Valid LaptopEmiBean laptopEmiBean, BindingResult result, Model model,
						HttpServletRequest request) {
					String success=null;
					model.addAttribute("laptopEmiBean",laptopEmiBean);
					success=portalDao.saveLaptopEmiDetails(laptopEmiBean);
					request.setAttribute(success, "successfromLap");
					return "lapTopEmiPage";
				}
				/*
				@RequestMapping(value = "/showlaptopEmi")
				public String showLaptopDetails(Model model,
						HttpServletRequest request) {
					String success=null;
					LaptopEmiBean laptopEmiBean=new LaptopEmiBean();
					model.addAttribute("laptopEmiBean",laptopEmiBean);
					laptopEmiBean=portalDao.showlaptopDetails(laptopEmiBean);
					request.setAttribute(success, "successfromLap");
					return "lapTopEmiPage";
				}
				*/
}
