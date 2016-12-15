package com.niit.shoppingsite.dao.impl;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;

import com.niit.shoppingsite.dao.ProductDAO;
import com.niit.shoppingsite.model.Product;
@SuppressWarnings("deprecation")


public class ProductDAOImpl implements ProductDAO{

	@Autowired
	private SessionFactory sessionFactory;
	public ProductDAOImpl(SessionFactory sessionFactory)
	{
		this.sessionFactory = sessionFactory;
	}
	//save -save the record - if the record exist it will throw error
	//update - update the record - if the record does not exist, it will throw error
	//save or update - if the record exist, it will update
	//                 - if the record does not exist it will create
	/*@Transactional
	public boolean saveOrUpdate(Product product){
		try {
			System.out.println("save method");
		sessionFactory.getCurrentSession().save(product);
		return true;
		} catch(HibernateException e){
			e.printStackTrace();
			return false;
		}
		
	}*/
	
	@Transactional
	public boolean update(Product product){
		try {
		sessionFactory.getCurrentSession().update(product);
		return true;
		} catch(HibernateException e){
			e.printStackTrace();
			return false;
		}
		
	}
	
	
	@Transactional
		public boolean delete(Product product){
			try {
			sessionFactory.getCurrentSession().delete(product);
			return true;
			} catch(HibernateException e){
				e.printStackTrace();
				return false;
			}
			
	}
	@Transactional
		public Product get(int id){
			// select* from category where id='101'
			String hql = "from Product where id="+"'"+id+"'";
			Query query = sessionFactory.getCurrentSession().createQuery(hql);
			@SuppressWarnings("unchecked")
			List<Product> list = query.list();
			if(list==null){
				return null;
			} else {
				return list.get(0);
			}
		}
		@Transactional
		@SuppressWarnings({ "unchecked", "deprecation" })
		public List<Product> list() {
			String hql = "from Product";
			Query query = sessionFactory.getCurrentSession().createQuery(hql);
			return query.list();
		}
		
		@Transactional
		@SuppressWarnings("unchecked")
		public List<Product> getproduct(int id) {
			String hql="from Product where id= "+id;
			@SuppressWarnings("rawtypes")
			Query query = sessionFactory.getCurrentSession().createQuery(hql);
			List<Product> listProduct = (List<Product>) query.list();
			return listProduct;
		}

		@Transactional
		public boolean saveOrUpdate(Product product) {
			try {
				sessionFactory.getCurrentSession().save(product);
				return true;
			} catch (HibernateException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				return false;
			}
		}
		@SuppressWarnings({ "unchecked", "rawtypes" })
		@Transactional
		public List<Product> navproduct(int id) {
			String hql = "from Product where categoryid= "+id;
			Query query = sessionFactory.getCurrentSession().createQuery(hql);
			List<Product> catproducts = (List<Product>) query.list();
			return catproducts;
		}
		
}
