package com.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.pojo.User;
import com.services.DAOProvider;

public class DAOImpl implements DAOProvider{
	Connection connection;
	@Override
	public boolean RegistrationUser(User u) {
		connection = DbConnection.getConnection();
		String sql = "Insert into jspcont (FIRSTNAME,LASTNAME,USERNAME,PASSWORD,PHONENUMBER) values(?,?,?,?,?)";
		try {
			PreparedStatement pre = connection.prepareStatement(sql);
			pre.setString(1, u.getFirstName());
			pre.setString(2, u.getLastName());
			pre.setString(3, u.getUserName());
			pre.setString(4, u.getPassword());
			pre.setString(5, u.getContactNumber());
			int rs = pre.executeUpdate();
			
			if(rs>=1) {
				return true;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}

	@Override
	public int LoginUser(User u) {
		connection = DbConnection.getConnection();
		String query = "select * from jspcont where USERNAME=? and PASSWORD =?";
		try {
			PreparedStatement pre = connection.prepareStatement(query);
			pre.setString(1, u.getUserName());
			pre.setString(2, u.getPassword());
			ResultSet rs = pre.executeQuery();
			if(rs.next()) {
				return 1;
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return 0;
	}

}
