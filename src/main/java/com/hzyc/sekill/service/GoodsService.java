package com.hzyc.sekill.service;

import java.util.Map;

import com.hzyc.sekill.utils.PageQueryUtil;

public interface GoodsService extends BaseService{
	/**
	 * 查询所有商品,带分页
	 */
	public Map<String, Object> findGoodsAll(PageQueryUtil page)
			throws Exception;
}
