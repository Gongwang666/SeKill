package com.hzyc.sekill.service.Impl;

import org.springframework.stereotype.Service;

import com.hzyc.sekill.model.GoodsImg;
import com.hzyc.sekill.service.GoodsImgService;
@Service("goodsImgService")
public class GoodsImgServiceImpl extends BaseServiceImpl implements GoodsImgService {

	@Override
	public void addImg(GoodsImg goodsImg) {
		getBaseDao().save(goodsImg);
	}

	

}
