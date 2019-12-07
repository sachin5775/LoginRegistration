package com.DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DbConnection {
	private static String url = "jdbc:mysql://localhost:3306/allianz?useLegacyDatetimeCode=false&serverTimezone=America/New_York";
	private static String driverName = "com.mysql.jdbc.Driver";
	private static String username = "root";
	private static String password = "";
	private static Connection connection;

	public static Connection getConnection() {
		try {
			Class.forName(driverName);
			try {
				connection = DriverManager.getConnection(url, username, password);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				System.out.println("Failed to create the database connection.");
			}
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			System.out.println("Driver not found.");
		}

		return connection;
	}
}
