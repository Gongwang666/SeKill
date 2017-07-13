package com.hzyc.sekill.service.Impl;

import java.util.Map;

import org.springframework.stereotype.Service;

import com.hzyc.sekill.service.GoodsService;
import com.hzyc.sekill.utils.PageQueryUtil;
@Service("goodsService")
public class GoodsServiceImpl extends BaseServiceImpl implements GoodsService{

	@Override
	public Map<String, Object> findGoodsAll(PageQueryUtil page) throws Exception {
		String hql = "from Goods";
		return backPage(hql, page);
	}

}
