package com.services;

import com.pojo.User;

public interface DAOProvider {
	boolean RegistrationUser(User u);
	int LoginUser(User u);
}
