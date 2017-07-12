package com.hzyc.sekill.dao;

import java.util.List;

import com.hzyc.sekill.model.Category;



/**
 * 一级分类持久层接口
 * @author 龚旺
 *
 */
public interface CategoryDAO {
	public List<Category> findAllCategories();
	/**
	 * 通过cid查找一级菜单
	 * @author 龚旺
	 *
	 */
	public Category findCategory(int cid);
	/**
	 * 通过cid删除一级菜单
	 * @author 龚旺
	 *
	 */
	public void deleteCategory(Category category);
	/**
	 * 添加一级菜单
	 * @author 龚旺
	 *
	 */
	public void save(Category category);
	/**
	 * 修改一级菜单属性
	 * @author 龚旺
	 *
	 */
	public void update(Category category);
}
