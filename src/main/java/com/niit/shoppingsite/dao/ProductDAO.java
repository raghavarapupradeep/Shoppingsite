package com.niit.shoppingsite.dao;

import java.util.List;

import com.niit.shoppingsite.model.Product;

public interface ProductDAO {
	public boolean save(Product product);
	
	public boolean delete(int id);
	
	public Product get(int id);
	
	public List<Product> list();
	

	}
