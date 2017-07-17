package com.hzyc.sekill.service.Impl;


import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

import org.springframework.stereotype.Service;

import com.hzyc.sekill.model.Category;
import com.hzyc.sekill.model.CategorySecond;
import com.hzyc.sekill.model.Template;
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
	public void addCategorySecond(CategorySecond cs) throws Exception {
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

	@Override
	public void addTemplate(CategorySecond cs) {
		try {
			getBaseDao().batchAddEnity(cs.getTemplates());
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	@Override
	public List<Template> findTemplatesById(int csid) {
		String hql = "from Template where csid = '"+csid+"'";
		return getBaseDao().find(hql);
	}
	
}
