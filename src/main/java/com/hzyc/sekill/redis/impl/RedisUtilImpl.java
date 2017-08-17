package com.hzyc.sekill.redis.impl;

import javax.annotation.Resource;

import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.stereotype.Component;

import com.hzyc.sekill.redis.RedisUtil;

@Component("redisUtil")
public class RedisUtilImpl implements RedisUtil {

	@Resource
	private RedisTemplate<String, Object> redisTemplate;// redis操作模板


	@Override
	public void put(String key, String key1, Object value) {
		if (key == null || key1==null || "".equals(key) || "".equals(key1)) {
			return;
		}
		redisTemplate.opsForHash().put(key, key1, value);
	}

	@Override
	public Object get(String key, String key1) {
		 Object obj = redisTemplate.opsForHash().get(key, key1);  
	        if(obj == null){  
	            return null;  
	        }else{  
	            return obj;  
	        }  
	}

	@Override
	public void remove(String key, String key1) {
		if (key == null || key1==null || "".equals(key) || "".equals(key1)) {
			return;
		}
		redisTemplate.opsForHash().delete(key, key1);
	}  

}
