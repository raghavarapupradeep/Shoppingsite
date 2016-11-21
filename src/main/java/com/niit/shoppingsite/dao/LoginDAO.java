package com.niit.shoppingsite.dao;

import java.util.List;

import com.niit.shoppingsite.model.Login;


public interface LoginDAO {
public boolean save(Login login);
	
	public boolean delete(int lid);
	
	public Login get(int lid);
	
	public List<Login> list();
	
}
