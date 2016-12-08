package com.niit.shoppingsite.dao;

import java.util.List;

import com.niit.shoppingsite.model.User;

public interface UserDAO {

	public List<User> list();

	public User get(int id);

	public void saveOrUpdate(User user);

	public void delete(int id);
	
	public boolean isValidUser(String userName,String password);
	
public User get(String userName);
/*pradeeeppp*/
}
