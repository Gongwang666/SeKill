package com.hzyc.sekill.service.Impl;

import java.util.Map;

import org.springframework.stereotype.Service;

import com.hzyc.sekill.service.SecKillService;
import com.hzyc.sekill.utils.PageQueryUtil;
@Service("secKillService")
public class SecKillServiceImpl extends BaseServiceImpl implements SecKillService {

	@Override
	public Map<String, Object> findSecKillAll(PageQueryUtil page) throws Exception {
		String hql = "from SecKill";
		return backPage(hql, page);
	}

}
