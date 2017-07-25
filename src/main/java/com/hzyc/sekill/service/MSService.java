package com.hzyc.sekill.service;

import java.util.Date;
import java.util.List;

import com.hzyc.sekill.model.SecKill;

public interface MSService extends BaseService{
	//获取数据库时间
	public Date getMysqlTime();
	
	public List<SecKill> findSecKillByTime(Date date);
}
