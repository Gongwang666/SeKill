package com.test.usertest;


import java.util.Date;

import javax.annotation.Resource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.hzyc.sekill.model.Goods;
import com.hzyc.sekill.model.SecKill;
import com.hzyc.sekill.service.SecKillService;
@RunWith(SpringJUnit4ClassRunner.class)    
@ContextConfiguration(locations = {"classpath*:spring-hibernate.xml"})    
public class SecKillTest {
	@Resource(name="secKillService")
	private SecKillService secKillService;
	@Test
	public void add() {
		SecKill secKill = new SecKill();
		Goods goods = new Goods();
		secKill.setName("秒杀一");
		secKill.setStarttime(new Date());
		secKill.setEndtime(new Date());
		secKill.setPrice(1000);
		secKill.setTotalcount(100);
		secKill.setRemcount(100);
		goods.setGid(30);
		secKill.setGoods(goods);
		secKillService.addSecKill(secKill);
	}

}
