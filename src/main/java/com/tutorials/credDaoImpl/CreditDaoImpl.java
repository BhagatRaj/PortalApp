package com.tutorials.credDaoImpl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.sql.DataSource;

import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.ResultSetExtractor;
import org.springframework.jdbc.core.RowMapper;

import java.sql.Connection;


import com.tutorials.CreditDao.CreditDao;
import com.tutorials.bean.CreditCardBean;

public class CreditDaoImpl implements CreditDao {
	private DataSource dataSource;
	JdbcTemplate jdbcTemplate;
	
	public void setDataSource(DataSource dataSource) {
		this.dataSource = dataSource;
	}

	public CreditCardBean creditDetails (CreditCardBean creditCardBean, String userName) {
		//String insertQuery="insert into autoemi(StartMonth,AmountPaid,DateOfPaid,BikeName)  values('"+autoMobSaveBean.getMonth()+"','"+autoMobSaveBean.getAmountToPaid()+"','"+autoMobSaveBean.getDateOfPaid()+"','"+autoMobSaveBean.getBikeName()+"')"; 
		String insertQuery="insert into creditcard(CardName,CardNum,CreditExp,CredExpMonth,ExpenseYear,Comment,CardType,CardUser)  values(?,?,?,?,?,?,?,?)";
		
		jdbcTemplate =new JdbcTemplate(dataSource);
		Object[] args = new Object[] {creditCardBean.getCardName(),creditCardBean.getCardNum(),creditCardBean.getCreditExpAm(),creditCardBean.getCreditExpMonth(),creditCardBean.getCreditExpYear(), creditCardBean.getComment(),creditCardBean.getCardType(),userName};
		int out=jdbcTemplate.update(insertQuery, args);
		if(out!=0){
			System.out.println("Employee Saved with"+creditCardBean.getCardNum());
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
		
		return creditCardBean;
	}

	/*@Override
	public List<CreditCardBean> getcreditDetails(CreditCardBean cardBean, String userName) {
		//CreditCardBean cardBean2=null; 
		List <CreditCardBean>list=new ArrayList<CreditCardBean>();
		try {
			
			String sql="select CardName,CardNum,CreditExp,CredExpMonth,ExpenseYear,Comment,CardType,CardUser from creditcard where CardName="+cardBean.getCardName()+" and CardNum="+cardBean.getCardNum()+" and CardUser="+userName;
			list=jdbcTemplate.query(sql, new RowMapper<CreditCardBean>() {

				@Override
				public CreditCardBean mapRow(ResultSet rs, int rowNum) throws SQLException {
					CreditCardBean cardBean2=new CreditCardBean();
					cardBean2.setCardName(rs.getString("CardName"));
					cardBean2.setCardNum(rs.getString("CardNum"));
					cardBean2.setCreditExpAm(rs.getString("CreditExp"));
					cardBean2.setCreditExpMonth(rs.getString("CredExpMonth"));
					cardBean2.setCreditExpYear(rs.getString("ExpenseYear"));
					cardBean2.setComment(rs.getString("Comment"));
					cardBean2.setCardType(rs.getString("CardType"));
					String cardUser=rs.getString("CardUser");
					
					return cardBean2;
				}
				
				
			});
		}catch (Exception e) {
			e.printStackTrace();
		}

		return list;
	}
*/	
	public List<CreditCardBean> getcreditDetails(CreditCardBean cardBean, String userName) {
		String sql="select CardName,CardNum,CreditExp,CredExpMonth,ExpenseYear,Comment,CardType,CardUser from creditcard where CardName=? and CardNum=? and CardUser=?";
		CreditCardBean cardBean2=null;
		Connection connection=null;
		List<CreditCardBean> cardBeansList=new ArrayList<>();
		try {
			connection=dataSource.getConnection();
			PreparedStatement preparedStatement=connection.prepareStatement(sql);
			preparedStatement.setString(1, cardBean.getCardName());
			preparedStatement.setString(2, cardBean.getCardNum());
			preparedStatement.setString(3, userName);
			ResultSet set=preparedStatement.executeQuery();
			
			while(set.next()) {
				cardBean2=new CreditCardBean();
				cardBean2.setCardName(set.getString("CardName"));
				cardBean2.setCardNum(set.getString("CardNum"));
				cardBean2.setCreditExpAm(set.getString("CreditExp"));
				cardBean2.setCreditExpMonth(set.getString("CredExpMonth"));
				cardBean2.setCreditExpYear(set.getString("ExpenseYear"));
				cardBean2.setComment(set.getString("Comment"));
				cardBean2.setCardType(set.getString("CardType"));
				cardBean2.setUserName(set.getString("CardUser"));
				cardBeansList.add(cardBean2);
				
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return cardBeansList;		
	}
	
}
