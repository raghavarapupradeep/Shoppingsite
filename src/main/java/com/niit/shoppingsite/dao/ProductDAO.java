package com.niit.shoppingsite.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.niit.shoppingsite.model.Product;

@Repository
public interface ProductDAO {
	public boolean saveOrUpdate(Product product);
	
	public boolean delete(Product product);
	public  Product get(int id);
	public  List<Product> list();
	public List<Product> getproduct(int id);
		
	/*tanuja*/
}
