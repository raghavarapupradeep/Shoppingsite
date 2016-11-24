package com.niit.shoppingsite.dao;

import java.util.List;

import com.niit.shoppingsite.model.Supplier;

public interface SupplierDAO {

	public boolean save(Supplier supplier);
	public boolean delete(int id);

	public Supplier get(int id);

	public List<Supplier> list();
}
