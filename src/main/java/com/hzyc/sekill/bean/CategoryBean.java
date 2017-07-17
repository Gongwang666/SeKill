package com.hzyc.sekill.bean;

import java.util.ArrayList;
import java.util.List;
import java.util.Set;

import com.hzyc.sekill.model.Category;
import com.hzyc.sekill.model.CategorySecond;

public class CategoryBean implements java.io.Serializable{
	private static final long serialVersionUID = -9081654832544915034L;
	private int cid;
	private String cName;
	private List<CategorySecondBean> categorySecondList =new ArrayList<CategorySecondBean>();
	
	public CategoryBean(Category category) {
		this.cid = category.getCid();
		this.cName = category.getcName();
		Set<CategorySecond> set = category.getCategorySecondSet();
		if(set!=null){
			for(CategorySecond cs : set){
				categorySecondList.add(new CategorySecondBean(cs));
			}
		}
	}
	
	public int getCid() {
		return cid;
	}
	public void setCid(int cid) {
		this.cid = cid;
	}
	public String getcName() {
		return cName;
	}
	public void setcName(String cName) {
		this.cName = cName;
	}

	public List<CategorySecondBean> getCategorySecondList() {
		return categorySecondList;
	}

	public void setCategorySecondList(List<CategorySecondBean> categorySecondList) {
		this.categorySecondList = categorySecondList;
	}

	
}
