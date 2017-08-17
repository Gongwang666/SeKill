package com.test.usertest;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.hzyc.sekill.model.Category;
import com.hzyc.sekill.service.CategoryService;
import com.hzyc.sekill.service.Impl.CategoryServiceImpl;
@RunWith(SpringJUnit4ClassRunner.class)    
@ContextConfiguration(locations = {"classpath*:spring-hibernate.xml"})  
public class CategoryTest {

	@Test
	public void test() {
		
	}

}
