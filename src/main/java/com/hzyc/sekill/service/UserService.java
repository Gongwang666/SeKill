package com.hzyc.sekill.service;

import com.hzyc.sekill.model.User;

public interface UserService extends BaseService{

	/** 
	* @Title: findUserByName 
	* @Description: TODO(通过用户名和密码查找用户) 
	* @param  User对象   入参
	* @return User    返回类型
	* @author （作者） 
	* @throws
	* @date 2017年7月25日 下午2:15:21 
	* @version V1.0   
	*/
	public User findUserByName(User user);
}
