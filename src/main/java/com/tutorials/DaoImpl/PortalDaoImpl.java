package com.tutorials.DaoImpl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.ResultSetExtractor;

import com.tutorials.bean.AutoMobDataBean;
import com.tutorials.bean.AutoMobSaveBean;
import com.tutorials.bean.LaptopEmiBean;
import com.tutorials.bean.LoginBean;
import com.tutorials.bean.LoginBeanVO;
import com.tutorials.dao.PortalDao;
import com.tutorials.sqlContans.MedSqlConstants;

public class PortalDaoImpl implements PortalDao{
	
	
	/*@Autowired*/
	private DataSource dataSource;
	JdbcTemplate jdbcTemplate;
	
//private static final Logger logger = LoggerFactory.getLogger(PortalDaoImpl.class);
	
/*	private SessionFactory sessionFactory;
	
	public void setSessionFactory(SessionFactory sf){
		this.sessionFactory = sf;
	}*/
	
	public void setDataSource(DataSource dataSource) {
		this.dataSource = dataSource;
	}
	

	public AutoMobDataBean findVehicleDetails(String modelNum, String datepicker, AutoMobDataBean autoMobDataBean) {
		
		String sqlQuery="select bikeModel, engineCC, year,mileage,TopSpeed from automobile where bikeModel="+modelNum+" and year="+datepicker;
		return jdbcTemplate.query(sqlQuery, new ResultSetExtractor<AutoMobDataBean>() {

			public AutoMobDataBean extractData(ResultSet resultSet) throws SQLException, DataAccessException {
				 AutoMobDataBean autoMobDataBean=null;
				if(resultSet.next()){
					autoMobDataBean=new AutoMobDataBean();
					autoMobDataBean.setModelNum(resultSet.getString("bikeModel"));
					autoMobDataBean.setEngineCC(resultSet.getString("engineCC"));
					autoMobDataBean.setDatepicker(resultSet.getString("year"));
					autoMobDataBean.setMileage(resultSet.getString("mileage"));
					autoMobDataBean.setTopSpeed(resultSet.getString("TopSpeed"));
				}
				return autoMobDataBean;
			}
		});
			
		}
		/*try{
			
		connection=dataSource.getConnection();	
		PreparedStatement preparedStatement=connection.prepareStatement(sqlQuery);
		preparedStatement.setString(1, modelNum);
		preparedStatement.setString(2, datepicker);
		ResultSet resultSet=preparedStatement.executeQuery();
		while(resultSet.next()){
			autoMobDataBean=new AutoMobDataBean();
			autoMobDataBean.setModelNum(resultSet.getString("bikeModel"));
			autoMobDataBean.setEngineCC(resultSet.getString("engineCC"));
			autoMobDataBean.setDatepicker(resultSet.getString("year"));
			autoMobDataBean.setMileage(resultSet.getString("mileage"));
			autoMobDataBean.setTopSpeed(resultSet.getString("TopSpeed"));
			
		}
		
		}catch (SQLException e) {
			e.printStackTrace();
		}*/
		
	/*	return autoMobDataBean;
	}
	*/
	
	public List findEmiOption(String userName,AutoMobSaveBean autoMobDataBean){
		AutoMobSaveBean autoMobDataBeannew=null;
		Connection connection=null;
		List datList=new ArrayList();
		String sqlQuery="select StartMonth, AmountPaid, DateOfPaid,BikeName from autoemi";
		try{
		connection=dataSource.getConnection();	
		PreparedStatement preparedStatement=connection.prepareStatement(sqlQuery);
		ResultSet resultSet=preparedStatement.executeQuery();
		while(resultSet.next()){
			autoMobDataBeannew=new AutoMobSaveBean();
			autoMobDataBeannew.setMonth(resultSet.getString("StartMonth"));
			autoMobDataBeannew.setAmountToPaid(resultSet.getString("AmountPaid"));
			autoMobDataBeannew.setDateOfPaid(resultSet.getString("DateOfPaid"));
			autoMobDataBeannew.setBikeName(resultSet.getString("BikeName"));
			datList.add(autoMobDataBeannew);
		}
		}catch (SQLException e) {
			e.printStackTrace();
		}
		return datList;
	} 

	public AutoMobSaveBean saveEmiDetails(AutoMobSaveBean autoMobSaveBean){
		//String insertQuery="insert into autoemi(StartMonth,AmountPaid,DateOfPaid,BikeName)  values('"+autoMobSaveBean.getMonth()+"','"+autoMobSaveBean.getAmountToPaid()+"','"+autoMobSaveBean.getDateOfPaid()+"','"+autoMobSaveBean.getBikeName()+"')"; 
		String insertQuery="insert into autoemi(StartMonth,AmountPaid,DateOfPaid,BikeName)  values(?,?,?,?)";
		
		jdbcTemplate =new JdbcTemplate(dataSource);
		Object[] args = new Object[] {autoMobSaveBean.getMonth(),autoMobSaveBean.getAmountToPaid(),autoMobSaveBean.getDateOfPaid(),autoMobSaveBean.getBikeName()};
		int out=jdbcTemplate.update(insertQuery, args);
		if(out!=0){
			System.out.println("Employee Saved with"+autoMobSaveBean.getBikeName());
		}else{
			System.out.println("Failed");
		}
		
		
	/*	try{
			Connection connection=null;
			connection=dataSource.getConnection();	
			
			PreparedStatement preparedStatement=connection.prepareStatement(insertQuery);
			preparedStatement.setString(1, autoMobSaveBean.getMonth());
			preparedStatement.setString(2, autoMobSaveBean.getAmountToPaid());
			preparedStatement.setString(3, autoMobSaveBean.getDateOfPaid());
			preparedStatement.setString(4, autoMobSaveBean.getBikeName());

			preparedStatement.executeUpdate();
			preparedStatement.close();
			
			
			
		}catch (SQLException e) {
			e.printStackTrace();
		}*/
		
		return autoMobSaveBean;
	}
	
	public String saveUserSetup(String userName, String userPass) {
	//String insertUserSetup="insert into automobile(UserName,UserPass)  values(?,?)";
	//Connection connection=null;
	JdbcTemplate insert = new JdbcTemplate(dataSource);
	insert.update("INSERT INTO automobile (UserName, UserPass) VALUES(?,?)",
	        new Object[] { userName, userPass });	
		return "Record Added";
	}
	
	public LoginBeanVO validateUserFromDb(LoginBean loginBean) {
		LoginBeanVO beanVO=null; 
		//String status = "";
		List <LoginBeanVO>userDBlist=  new ArrayList<LoginBeanVO>();
		Connection connection=null;
		String sqlQuery="select user_Name,user_Pass,user_email from userregitable";		
		try{
			connection=dataSource.getConnection();	
			PreparedStatement preparedStatement=connection.prepareStatement(sqlQuery);
			ResultSet resultSet=preparedStatement.executeQuery();
			while(resultSet.next()){
				beanVO=new LoginBeanVO();
				beanVO.setUserName(resultSet.getString("user_Name"));
				beanVO.setPassWord(resultSet.getString("user_Pass"));
				beanVO.setUser_Email(resultSet.getString("user_email"));
				userDBlist.add(beanVO);
			}
			
			for(int i=0; i<userDBlist.size(); i++) {
				if(userDBlist.get(i).getUserName().equals(loginBean.getUserName())) {
					beanVO.setStatus("validated");
					beanVO.setUser_Email(userDBlist.get(i).getUser_Email());
					//status="Validated";
					break;
				}else {
					beanVO.setStatus("notValidated");
					//status="notValidated";
				}				
			}
			}catch (SQLException e) {
				e.printStackTrace();
			}
		
		return beanVO;
		
		/*
		return jdbcTemplate.query(sqlQuery, new ResultSetExtractor<String>() {
			public String extractData(ResultSet resultSet) throws SQLException, DataAccessException {
				LoginBean loginBean=null;
				while(resultSet.next()){
					loginBean=new LoginBean();
					loginBean.setUserName(resultSet.getString("UserName"));
					loginBean.setPassWord(resultSet.getString("UserPass")); 
					list.add(loginBean);
				}
				
				for(int i=0; i<list.size(); i++) {
					
					System.out.println("iterator size of array list"+list.get(i));
				}
				return "";
			}
		});
*/		
	}
	
	public String saveLaptopEmiDetails(LaptopEmiBean laptopEmiBean) {
		
		/*Session session=this.sessionFactory.getCurrentSession();
		session.persist(laptopEmiBean);
		logger.info("Person saved successfully, Person Details="+laptopEmiBean);
*/
		//String insertQuery="insert into autoemi(StartMonth,AmountPaid,DateOfPaid,BikeName)  values('"+autoMobSaveBean.getMonth()+"','"+autoMobSaveBean.getAmountToPaid()+"','"+autoMobSaveBean.getDateOfPaid()+"','"+autoMobSaveBean.getBikeName()+"')"; 
		String insertQuery="insert into laptopemitable(lapName,lapModel,lapPurchaseDate,lapPurchaseEmi)  values(?,?,?,?)";
		
		jdbcTemplate =new JdbcTemplate(dataSource);
		Object[] args = new Object[] {laptopEmiBean.getLapName(),laptopEmiBean.getLapModel(),laptopEmiBean.getLapPurchaseDate(),laptopEmiBean.getLapPurchaseEmi()};
		int out=jdbcTemplate.update(insertQuery, args);
		if(out!=0){
			System.out.println("Employee Saved with"+laptopEmiBean.getLapModel());
		}else{
			System.out.println("Failed");
		}
		
			return "success";
	}


	@Override
	public LaptopEmiBean showlaptopDetails(LaptopEmiBean laptopEmiBean) {
		// TODO Auto-generated method stub
		return null;
	}


/*	@Override
	public Map showLapList() {
		//Map lapDetailsMap=new HashMap<>();
		return jdbcTemplate.query(MedSqlConstants.queryForDropDownList.toString(), new ResultSetExtractor<Map>() {
			
			public Map extractData(ResultSet resultSet) throws SQLException, DataAccessException {
				//LaptopEmiBean laptopEmiBean=null;
				 HashMap<String,String> laptopEmiBean= new HashMap<String,String>();
					if(resultSet.next()){
					laptopEmiBean.put(resultSet.getString("lapName"),resultSet.getString("lapModel"));
//					laptopEmiBean.setLapName(resultSet.getString("lapName"));
//					laptopEmiBean.setLapModel(resultSet.getString("lapModel"));
//					lapDetailsMap.put("com.laptopdetaislist", laptopEmiBean);
				}
				return laptopEmiBean;
			}
		});
	}*/
	
			public List showLapList() {
				LaptopEmiBean laptopEmiBean=null;
				Connection connection=null;
				List datList=new ArrayList();
				
					try{
					connection=dataSource.getConnection();	
					PreparedStatement preparedStatement=connection.prepareStatement(MedSqlConstants.queryForDropDownList.toString());
					ResultSet resultSet=preparedStatement.executeQuery();
					while(resultSet.next()){
						laptopEmiBean=new LaptopEmiBean();
						laptopEmiBean.setLapName(resultSet.getString("lapName"));
						laptopEmiBean.setLapModel(resultSet.getString("lapModel"));;
						datList.add(laptopEmiBean);
						
					}
					}catch (SQLException e) {
					e.printStackTrace();
				}
				return datList;
			
			}
}
