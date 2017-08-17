package com.hzyc.sekill.redis;


public interface RedisUtil {
	/** 
	* @Title: put 
	* @Description: TODO(添加) 
	* @param @param key
	* @param @param key1
	* @param @param value    入参
	* @return void    返回类型
	* @author （作者） 
	* @throws
	* @date 2017年8月3日 下午12:17:04 
	* @version V1.0   
	*/
	void put(String key,String key1,Object value);
	/** 
	* @Title: get 
	* @Description: TODO(根据key获取值) 
	* @param @param key
	* @param @param key1
	* @param @return    入参
	* @return Object    返回类型
	* @author （作者） 
	* @throws
	* @date 2017年8月3日 下午12:17:19 
	* @version V1.0   
	*/
	Object get(String key,String key1);
	/** 
	* @Title: remove 
	* @Description: TODO(删除) 
	* @param @param key
	* @param @param key1    入参
	* @return void    返回类型
	* @author （作者） 
	* @throws
	* @date 2017年8月3日 下午12:17:47 
	* @version V1.0   
	*/
	void remove(String key,String key1);
}
