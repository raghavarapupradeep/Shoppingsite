package com.niit.shoppingsite.config;
import java.util.Properties;

import javax.sql.DataSource;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.orm.hibernate5.HibernateTransactionManager;
import org.springframework.orm.hibernate5.LocalSessionFactoryBuilder;
import org.springframework.transaction.annotation.EnableTransactionManagement;

import com.niit.shoppingsite.dao.CartDAO;
import com.niit.shoppingsite.dao.CategoryDAO;
import com.niit.shoppingsite.dao.CheckoutDAO;
import com.niit.shoppingsite.dao.ProductDAO;
import com.niit.shoppingsite.dao.SupplierDAO;
import com.niit.shoppingsite.dao.UserDAO;
import com.niit.shoppingsite.dao.impl.CartDAOImpl;
import com.niit.shoppingsite.dao.impl.CategoryDAOImpl;
import com.niit.shoppingsite.dao.impl.CheckoutDAOImpl;
import com.niit.shoppingsite.dao.impl.ProductDAOImpl;
import com.niit.shoppingsite.dao.impl.SupplierDAOImpl;
import com.niit.shoppingsite.dao.impl.UserDAOImpl;
import com.niit.shoppingsite.model.Cart;
import com.niit.shoppingsite.model.Category;
import com.niit.shoppingsite.model.Checkout;
import com.niit.shoppingsite.model.Product;
import com.niit.shoppingsite.model.Supplier;
import com.niit.shoppingsite.model.User;




@Configuration
@ComponentScan("com.niit.Shoppingsite")
@EnableTransactionManagement
public class ApplicationContextConfig {

		
		
		@Bean(name = "dataSource")
		public DataSource getDataSource() {
			DriverManagerDataSource dataSource = new DriverManagerDataSource();
			dataSource.setDriverClassName("org.h2.Driver");
			dataSource.setUrl("jdbc:h2:tcp://localhost/~/pradeep");
			dataSource.setUsername("sa");
		
			System.out.println("Datasource");
			return dataSource;

		}

		private Properties getHibernateProperties() {
			Properties properties = new Properties();
			properties.put("hibernate.show_sql", "true");
			properties.put("hibernate.dialect", "org.hibernate.dialect.H2Dialect");
			properties.put("hibernate.hbm2ddl.auto", "update");
			System.out.println("Hibernate Properties");
			return properties;

		}

		@Autowired
		@Bean(name = "sessionFactory")
		public SessionFactory getSessionFactory(DataSource dataSource) {
			LocalSessionFactoryBuilder sessionBuilder = new LocalSessionFactoryBuilder(dataSource);
			sessionBuilder.addProperties(getHibernateProperties());
			sessionBuilder.addAnnotatedClasses(Supplier.class);
			sessionBuilder.addAnnotatedClasses(Category.class);
			sessionBuilder.addAnnotatedClasses(Product.class);
			sessionBuilder.addAnnotatedClasses(Product.class);
			sessionBuilder.addAnnotatedClasses(User.class);
			sessionBuilder.addAnnotatedClasses(Cart.class);
			sessionBuilder.addAnnotatedClasses(Checkout.class);
	
		
			System.out.println("Session");
			
			return sessionBuilder.buildSessionFactory();
			
		}

		@Autowired
		@Bean(name = "transactionManager")
		public HibernateTransactionManager getTransactionManager(SessionFactory sessionFactory) {
			HibernateTransactionManager transactionManager = new HibernateTransactionManager(sessionFactory);
			System.out.println("Transaction");
			return transactionManager;
		}
	
				
		@Autowired
		@Bean(name = "productDAO")
		public ProductDAO getProductDao(SessionFactory sessionFactory) {
				return new ProductDAOImpl(sessionFactory);
				
		}
		
		
		@Autowired
		@Bean(name = "supplierDAO")
		public SupplierDAO getSupplierDao(SessionFactory sessionFactory) {
				return new SupplierDAOImpl(sessionFactory);
		}
	
		@Autowired
		@Bean(name = "categoryDAO")
		public CategoryDAO getCategoryDao(SessionFactory sessionFactory){
			return  new CategoryDAOImpl(sessionFactory);
		}
		@Autowired
		@Bean(name = "userDAO")
		public UserDAO getUserDao(SessionFactory sessionFactory){
			return  new UserDAOImpl(sessionFactory);
		}
		@Autowired
		@Bean(name = "cartDAO")
		public CartDAO getCartDao(SessionFactory sessionFactory){
			return  new CartDAOImpl(sessionFactory);
		}
		@Autowired
		@Bean(name = "checkoutDAO")
		public CheckoutDAO getCheckoutDao(SessionFactory sessionFactory){
			return  new CheckoutDAOImpl(sessionFactory);
		}
				}