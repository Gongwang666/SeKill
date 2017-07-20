package com.test.usertest;

import static org.junit.Assert.*;

import java.util.List;

import javax.annotation.Resource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.hzyc.sekill.model.Goods;
import com.hzyc.sekill.service.GoodsService;
@RunWith(SpringJUnit4ClassRunner.class)    
@ContextConfiguration(locations = {"classpath*:spring-hibernate.xml"})  
public class GoodsTest {
	@Resource(name="goodsService")
	private GoodsService goodsService;
	@Test
	public void findGoodsByName() {
		List<Goods> list =goodsService.findGoodsByName("Ma");
		for(Goods g:list){
			System.out.println(g.getGname());
		}
	}

}
