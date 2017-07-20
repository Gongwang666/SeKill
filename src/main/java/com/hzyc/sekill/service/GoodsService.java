package com.hzyc.sekill.service;

import java.util.List;
import java.util.Map;

import com.hzyc.sekill.model.Goods;
import com.hzyc.sekill.model.GoodsAttr;
import com.hzyc.sekill.utils.PageQueryUtil;

public interface GoodsService extends BaseService{
	/**
	 * 查询所有商品,带分页
	 */
	public Map<String, Object> findGoodsAll(PageQueryUtil page)
			throws Exception;

	public void addGoods(Goods goods);

	public Goods findGoodsByID(int gid) throws Exception;
	
	public List<GoodsAttr> findGoodsAttrAll(int gid);
	/**
	 * 查询商品附加属性是否已经存在
	 */
	public boolean isAttrExist(GoodsAttr goodsAttr);
	
	public void addGoodsAttr(List<GoodsAttr> list);

	public void edit(Goods goods);
	
	public List<Goods> findGoodsByName(String name);
}
