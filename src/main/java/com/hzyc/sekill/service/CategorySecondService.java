package com.hzyc.sekill.service;

import java.util.Map;

import com.hzyc.sekill.model.CategorySecond;
import com.hzyc.sekill.utils.PageQueryUtil;

/**
 * @author 龚旺
 *
 */
public interface CategorySecondService extends BaseService{

	public Map<String, Object> findCategoryAll(PageQueryUtil page);

	public void addCategorySecond(CategorySecond cs);

	public CategorySecond findById(int csid) throws Exception;

	public void edit(CategorySecond cs);

	
}
