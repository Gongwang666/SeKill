package com.hzyc.sekill.service.Impl;

import java.util.Date;
import java.util.List;

import org.springframework.stereotype.Service;

import com.hzyc.sekill.model.SecKill;
import com.hzyc.sekill.service.MSService;
@Service("MSService")
public class MSServiceImpl extends BaseServiceImpl implements MSService {

	@Override
	public Date getMysqlTime() {
		String sql = "select now()";
		List<Date> list = getBaseDao().quarySql(sql);
		if(!list.isEmpty()){
			return list.get(0);
		}
		return null;
	}

	@Override
	public List<SecKill> findSecKillByTime(Date date) {
		String hql = "from SecKill where starttime <= ? and endtime >= ?";
		return getBaseDao().find(hql, date,date);
	}

	
}
