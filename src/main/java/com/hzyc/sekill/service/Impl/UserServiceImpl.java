package com.hzyc.sekill.service.Impl;

import org.springframework.stereotype.Service;

import com.hzyc.sekill.model.User;
import com.hzyc.sekill.service.UserService;
/** 
* @ClassName: UserServiceImpl 
* @Description: TODO(用户service) 
* @author (作者)  
* @date 2017年7月25日 下午1:40:20 
* @version V1.0 
*/
@Service("userService")
public class UserServiceImpl extends BaseServiceImpl implements UserService{

	@Override
	public User findUserByName(User user) {
		String hql = "from User where userName = ? and passWord = ?";
		return getBaseDao().getOne(hql, user.getUserName(),user.getPassWord());
	}

	
}
