package com.hzyc.sekill.bean;

import com.hzyc.sekill.model.Category;

public class CategoryBean implements java.io.Serializable{
	private static final long serialVersionUID = -9081654832544915034L;
	private int cid;
	private String cName;
	
	public CategoryBean(Category category) {
		this.cid = category.getCid();
		this.cName = category.getcName();
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
	
}
