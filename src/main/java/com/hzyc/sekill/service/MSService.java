package com.hzyc.sekill.service;

import java.util.Date;
import java.util.List;

import com.hzyc.sekill.dto.Exposer;
import com.hzyc.sekill.exception.RepeatKillException;
import com.hzyc.sekill.exception.SecKillCloseException;
import com.hzyc.sekill.exception.SecKillException;
import com.hzyc.sekill.model.SecKill;
import com.hzyc.sekill.model.User;

public interface MSService extends BaseService{
	//获取数据库时间
	public Date getMysqlTime();
	
	public List<SecKill> findSecKillByTime(Date date);
	
	/** 
	* @Title: getSecKillList 
	* @Description: TODO(查询所有秒杀记录) 
	* @param @return    入参
	* @return List<SecKill>    返回类型
	* @author （作者） 
	* @throws
	* @date 2017年8月3日 下午9:28:43 
	* @version V1.0   
	*/
	List<SecKill> getSecKillList();
	
	/** 
	* @Title: getSecKillById 
	* @Description: TODO(通过id查询秒杀记录) 
	* @param @param id
	* @param @return    入参
	* @return SecKill    返回类型
	* @author （作者） 
	* @throws
	* @date 2017年8月3日 下午9:30:41 
	* @version V1.0   
	*/
	SecKill getSecKillById(int sid);
	
	/** 
	* @Title: exportSecKillUrl 
	* @Description: TODO(如果秒杀开启，输出秒杀接口地址；如果秒杀关闭，输出系统时间) 
	* @param @param sid    入参
	* @return void    返回类型
	* @author （作者） 
	* @throws
	* @date 2017年8月3日 下午9:34:30 
	* @version V1.0   
	*/
	Exposer exportSecKillUrl(int sid);
	
	/** 
	* @Title: executeSecKill 
	* @Description: TODO(执行秒杀操作) 
	* @param @param sid
	* @param @param user
	* @param @param md5    入参
	* @return void    返回类型
	* @author （作者） 
	* @throws
	* @date 2017年8月3日 下午9:43:24 
	* @version V1.0   
	*/
	void executeSecKill(int sid,User user,String md5)
	throws SecKillException,RepeatKillException,SecKillCloseException;
	
	void successKilled()throws Exception;
	
}
