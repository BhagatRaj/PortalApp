package com.tutorials.dao;


import java.util.List;
import java.util.Map;

import com.tutorials.bean.AutoMobDataBean;
import com.tutorials.bean.AutoMobSaveBean;
import com.tutorials.bean.LaptopEmiBean;
import com.tutorials.bean.LoginBean;
import com.tutorials.bean.LoginBeanVO;

public interface PortalDao {
	
	public AutoMobDataBean findVehicleDetails(String bikeModel, String year,AutoMobDataBean autoMobDataBean);
	
	public AutoMobSaveBean saveEmiDetails(AutoMobSaveBean autoMobSaveBean);
	
	public List findEmiOption(String userName,AutoMobSaveBean autoMobDataBean);
	
	public String saveUserSetup(String userName, String userPass);
	//public String getDetails(String s);
	
	public LoginBeanVO validateUserFromDb(LoginBean loginBean);
	
	public String saveLaptopEmiDetails(LaptopEmiBean laptopEmiBean);
	
	public LaptopEmiBean showlaptopDetails(LaptopEmiBean laptopEmiBean);
	
	public List showLapList();
}
