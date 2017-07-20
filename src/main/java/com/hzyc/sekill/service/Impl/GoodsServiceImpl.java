package com.hzyc.sekill.service.Impl;

import java.util.Date;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;

import com.hzyc.sekill.model.Goods;
import com.hzyc.sekill.model.GoodsAttr;
import com.hzyc.sekill.service.GoodsService;
import com.hzyc.sekill.utils.PageQueryUtil;
@Service("goodsService")
public class GoodsServiceImpl extends BaseServiceImpl implements GoodsService{

	@Override
	public Map<String, Object> findGoodsAll(PageQueryUtil page) throws Exception {
		String hql = "from Goods";
		return backPage(hql, page);
	}

	@Override
	public void addGoods(Goods goods) {
		goods.setGaddtime(new Date());
		getBaseDao().save(goods);
	}

	@Override
	public Goods findGoodsByID(int gid) throws Exception {
		return get(Goods.class,gid);
	}

	@Override
	public List<GoodsAttr> findGoodsAttrAll(int gid) {
		String hql = "from GoodsAttr where gid = "+gid;
		return getBaseDao().find(hql);
	}

	@Override
	public boolean isAttrExist(GoodsAttr goodsAttr) {
		String hql = "from GoodsAttr where tid= ? and gid = ?";
		GoodsAttr gAttr = (GoodsAttr)getBaseDao().getOne(hql, goodsAttr.getTemplate().getId(),goodsAttr.getGoods().getGid());
		if(gAttr!=null){
			return true;
		}else{
			return false;
		}
	}

	@Override
	public void addGoodsAttr(List<GoodsAttr> list) {
		try {
			getBaseDao().batchAddEnity(list);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	@Override
	public void edit(Goods goods) {
		goods.setGupdatetime(new Date());
		getBaseDao().update(goods);
		
	}

	@Override
	public List<Goods> findGoodsByName(String name) {
		String hql = "from Goods g where g.gname like '%"+name+"%'";
		return getBaseDao().find(hql);
	}

}
