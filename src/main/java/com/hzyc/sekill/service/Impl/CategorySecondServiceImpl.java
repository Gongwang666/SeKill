package com.hzyc.sekill.service.Impl;


import java.util.Map;

import org.springframework.stereotype.Service;

import com.hzyc.sekill.model.Category;
import com.hzyc.sekill.model.CategorySecond;
import com.hzyc.sekill.service.CategorySecondService;
import com.hzyc.sekill.utils.PageQueryUtil;


@Service("categorySecondService")
public class CategorySecondServiceImpl extends BaseServiceImpl implements CategorySecondService {

	@Override
	public Map<String, Object> findCategoryAll(PageQueryUtil page) {
		String hql = "from CategorySecond";
		return backPage(hql, page);
	}

	@Override
	public void addCategorySecond(CategorySecond cs) {
		getBaseDao().save(cs);
	}

	@Override
	public CategorySecond findById(int csid) throws Exception {
		return get(CategorySecond.class, csid);
	}

	@Override
	public void edit(CategorySecond cs) {
		getBaseDao().update(cs);
	}
	
}
