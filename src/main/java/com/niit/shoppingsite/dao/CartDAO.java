package com.niit.shoppingsite.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.niit.shoppingsite.model.Cart;
@Repository
public interface CartDAO {
	
	public List<Cart> list();
	public boolean save(Cart cart);
	public boolean update(Cart cart); 
	public boolean delete(Cart cart);	
	public Cart get(int id);	
	public Cart getproduct(int id);	
	public long cartsize(int userId);
	public double CartPrice(int userId);
	public void pay(int userId);
}