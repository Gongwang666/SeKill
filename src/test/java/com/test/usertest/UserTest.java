package com.test.usertest;

import static org.junit.Assert.*;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.hzyc.sekill.controller.UserController;
import com.hzyc.sekill.model.User;

public class UserTest {

	@Test
	public void test() {
		/*ApplicationContext applicationContext = new ClassPathXmlApplicationContext("classpath:spring-hibernate.xml");
		SessionFactory sessionFactory = (SessionFactory) applicationContext.getBean("sessionFactory");
		Session session = sessionFactory.openSession();
		User user = (User) session.get(User.class, 1);
		System.out.println(user.getName());*/
		/*ApplicationContext applicationContext = new ClassPathXmlApplicationContext("classpath:spring-mvc.xml");
		UserController user = applicationContext.getBean(UserController.class);
		System.out.println(user);*/
	}

}
