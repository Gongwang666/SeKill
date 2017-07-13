package com.hzyc.sekill.service;

import java.util.List;
import java.util.Map;

import com.hzyc.sekill.model.Category;
import com.hzyc.sekill.utils.PageQueryUtil;

public interface CategoryService extends BaseService{
	/**
	 * 根据id查询一级分类
	 * @throws Exception 
	 */
	public Category findCategoryById(int id) throws Exception;
	/**
	 * 查询所有一级分类
	 */
	public List<Category> findCategoryAll()
			throws Exception;
	/**
	 * 查询所有一级分类,带分页
	 */
	public Map<String, Object> findCategoryAll(PageQueryUtil page)
			throws Exception;
	/**
	 * 添加一级分类
	 */
	public void addCategory(Category category);
	/**
	 * 删除一级分类
	 */
	public void removeCategory(Category category);
	/**
	 * 修改一级分类
	 */
	public void edit(Category category);
	/**
	 * 通过传入的字符串，模糊查询一级分类
	 */
	public List<Category> findCategoryByName(String name);
}
