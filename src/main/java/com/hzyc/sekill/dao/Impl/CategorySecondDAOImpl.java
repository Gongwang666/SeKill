package com.hzyc.sekill.dao.Impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.stereotype.Repository;

import com.hzyc.sekill.dao.CategorySecondDAO;
import com.hzyc.sekill.model.CategorySecond;
import com.hzyc.sekill.utils.PageHibernateCallback;

@Repository("categorySecondDAOImpl")
public class CategorySecondDAOImpl implements CategorySecondDAO {
	private HibernateTemplate hibernateTemplate;
	public HibernateTemplate getHibernateTemplate() {
		return hibernateTemplate;
	}
	@Resource
	public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
		this.hibernateTemplate = hibernateTemplate;
	}
	public int findCount() {
		String hql = "select count(*) from CategorySecond";
		@SuppressWarnings("unchecked")
		List<Long> list = (List<Long>)hibernateTemplate.find(hql);
		if(list != null&&list.size()>0){
			return list.get(0).intValue();
		}
		return 0;
	}
	public List<CategorySecond> findByPage(int begin, int limit) {
		String hql = "from CategorySecond order by csid asc";
		List<CategorySecond> list = hibernateTemplate.execute(
				new PageHibernateCallback<CategorySecond>(hql, null, begin,
						limit));
		return list;
	}
	public void save(CategorySecond categorySecond) {
		hibernateTemplate.saveOrUpdate(categorySecond);
	}
	public CategorySecond findByCsid(int csid) {
		String hql = "from CategorySecond where csid = ?";
		@SuppressWarnings("unchecked")
		List<CategorySecond> list = (List<CategorySecond>)hibernateTemplate.find(hql,csid);
		if(list != null&&list.size()>0){
			return list.get(0);
		}
		return null;
	}
	public void deleteCategorySecond(CategorySecond categorySecond) {
		hibernateTemplate.delete(categorySecond);
	}
	public void updateCategorySecond(CategorySecond categorySecond) {
		hibernateTemplate.update(categorySecond);
	}
	public List<CategorySecond> findAll() {
		String hql = "from CategorySecond order by cid asc";
		@SuppressWarnings("unchecked")
		List<CategorySecond> list = (List<CategorySecond>)hibernateTemplate.find(hql);
		if(list != null&&list.size()>0){
			return list;
		}
		return null;
	} 
}
