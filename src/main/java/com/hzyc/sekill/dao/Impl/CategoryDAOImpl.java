package com.hzyc.sekill.dao.Impl;


import java.util.List;

import javax.annotation.Resource;

import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.stereotype.Repository;

import com.hzyc.sekill.dao.CategoryDAO;
import com.hzyc.sekill.model.Category;



/**
 * 
 * 一级分类持久层的实现类
 * @author 龚旺
 *
 */
@Repository("categoryDAOImpl")
public class CategoryDAOImpl implements CategoryDAO{
	@Resource(name="hibernateTemplate")
	private HibernateTemplate hibernateTemplate;

	//从数据库查询所有的一级分类
	public List<Category> findAllCategories() {
		String hql = "from Category";
		@SuppressWarnings("unchecked")
		List<Category> list =(List<Category>) hibernateTemplate.find(hql);
		if(list!=null&&list.size()>0){
			return list;
		}
		return null;
	}
	public void deleteCategory(Category category) {
		hibernateTemplate.delete(category);
	}
	public Category findCategory(int cid) {
		return hibernateTemplate.get(Category.class, cid);
	}
	public void save(Category category) {
		hibernateTemplate.saveOrUpdate(category);
	}
	public void update(Category category) {
		hibernateTemplate.update(category);
	}
	
	
}
