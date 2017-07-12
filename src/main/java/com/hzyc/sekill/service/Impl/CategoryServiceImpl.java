package com.hzyc.sekill.service.Impl;


import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.hzyc.sekill.dao.CategoryDAO;
import com.hzyc.sekill.model.Category;
import com.hzyc.sekill.service.CategoryService;
import com.hzyc.sekill.utils.PageQueryUtil;


/**
 * 
 * 一级分类业务层的实现类
 * @author 龚旺
 *
 */
@Service("categoryService")
public class CategoryServiceImpl extends BaseServiceImpl implements CategoryService {

	@Override
	public List<Category> findCategoryAll() throws Exception {
		return getBaseDao().getAll(Category.class);
	}

	@Override
	public Map<String, Object> findCategoryAll(PageQueryUtil page) throws Exception {
		String hql = "from Category";
		return backPage(hql, page);
	}

	
}
