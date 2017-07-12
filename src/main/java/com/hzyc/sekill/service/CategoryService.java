package com.hzyc.sekill.service;

import java.util.List;
import java.util.Map;

import com.hzyc.sekill.model.Category;
import com.hzyc.sekill.utils.PageQueryUtil;

public interface CategoryService extends BaseService{
	/**
	 * 查询所有一级分类
	 */
	public List<Category> findCategoryAll()
			throws Exception;
	/**
	 * 查询所有一级分类
	 */
	public Map<String, Object> findCategoryAll(PageQueryUtil page)
			throws Exception;
}
