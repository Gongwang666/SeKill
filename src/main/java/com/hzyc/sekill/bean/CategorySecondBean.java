package com.hzyc.sekill.bean;

import com.hzyc.sekill.model.CategorySecond;

public class CategorySecondBean {
	private int csid;
	private String csName;
	
	public CategorySecondBean(CategorySecond categorySecond) {
		this.csid = categorySecond.getCsid();
		this.csName = categorySecond.getCsName();
	}
	public int getCsid() {
		return csid;
	}
	public void setCsid(int csid) {
		this.csid = csid;
	}
	public String getCsName() {
		return csName;
	}
	public void setCsName(String csName) {
		this.csName = csName;
	}
	
}
