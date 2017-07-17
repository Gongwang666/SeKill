package com.hzyc.sekill.model;


import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OrderBy;
import javax.persistence.Table;



/**
 * 
 * 二级分类的实体
 * @author 龚旺
 *
 */
@Entity
@Table(name="categorysecond")
public class CategorySecond{
	private int csid;
	private String csName;
	private Category category;
	private Set<Goods> products = new HashSet<Goods>();
	private List<Template> templates = new ArrayList<Template>();
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
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
	//设置与一级分类的多对一关联
	@ManyToOne(targetEntity=Category.class,optional = true,fetch = FetchType.LAZY)
	@JoinColumn(name="cid")
	public Category getCategory() {
		return category;
	}
	public void setCategory(Category category) {
		this.category = category;
	}
	//设置与商品的一对多关联
	@OneToMany(mappedBy="categorySecond",cascade = CascadeType.ALL)
	//根据添加日期的倒序排列
	@OrderBy("pDate desc")
	public Set<Goods> getProducts() {
		return products;
	}
	public void setProducts(Set<Goods> products) {
		this.products = products;
	}
	@OneToMany(mappedBy="categorySecond",cascade = CascadeType.ALL)
	public List<Template> getTemplates() {
		return templates;
	}
	public void setTemplates(List<Template> templates) {
		this.templates = templates;
	}
	
	
}
