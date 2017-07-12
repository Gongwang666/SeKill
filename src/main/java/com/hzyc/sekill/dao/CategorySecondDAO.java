package com.hzyc.sekill.dao;

import java.util.List;

import com.hzyc.sekill.model.CategorySecond;


/**
 * @author 龚旺
 *
 */
public interface CategorySecondDAO {
	/**
	 * 得到二级菜单的总个数
	 * @author 龚旺
	 *
	 */
	public int findCount();
	/**
	 * 带有分页的查询二级菜单
	 * @author 龚旺
	 *
	 */
	public List<CategorySecond> findByPage(int begin, int limit);
	/**
	 * 添加二级菜单
	 * @author 龚旺
	 *
	 */
	public void save(CategorySecond categorySecond);
	/**
	 * 通过csid查找二级菜单
	 * @author 龚旺
	 *
	 */
	public CategorySecond findByCsid(int csid);
	/**
	 * 删除二级菜单
	 * @author 龚旺
	 *
	 */
	public void deleteCategorySecond(CategorySecond categorySecond);
	/**
	 * 更新二级菜单信息
	 * @author 龚旺
	 *
	 */
	public void updateCategorySecond(CategorySecond categorySecond);
	/**
	 * 查询所有的二级菜单
	 * @author 龚旺
	 */
	public List<CategorySecond> findAll();

}
