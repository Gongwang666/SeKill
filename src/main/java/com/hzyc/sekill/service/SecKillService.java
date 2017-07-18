package com.hzyc.sekill.service;

import java.util.Map;

import com.hzyc.sekill.utils.PageQueryUtil;

public interface SecKillService extends BaseService {
	/**
	 * 查询所有秒杀活动,带分页
	 */
	public Map<String, Object> findSecKillAll(PageQueryUtil page)
			throws Exception;
}
