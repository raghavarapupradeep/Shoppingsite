package com.niit.shoppingsite.dao;

import java.util.List;

import com.niit.shoppingsite.model.Category;

public interface CategoryDAO {
	public boolean save(Category category);
	public boolean delete(int id);
	public Category get(int id);
	public List<Category> list();
	/*tanuja*/
}