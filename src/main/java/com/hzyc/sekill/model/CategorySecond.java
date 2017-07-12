package com.hzyc.sekill.model;


import java.util.HashSet;
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
import javax.persistence.Transient;



/**
 * 
 * 二级分类的实体
 * @author 龚旺
 *
 */
@Entity
@Table(name="categorysecond")
public class CategorySecond {
	private int csid;
	private String csName;
	//一级菜单的id，不参与持久化，只是为了表单提交时获取该值
	private Category category;
	//private Set<Product> products = new HashSet<Product>();
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
	@ManyToOne(targetEntity=Category.class,optional = false,fetch = FetchType.LAZY)
	@JoinColumn(name="cid")
	public Category getCategory() {
		return category;
	}
	public void setCategory(Category category) {
		this.category = category;
	}
	//设置与商品的一对多关联
	//@OneToMany(mappedBy="categorySecond",cascade = CascadeType.ALL)
	//根据添加日期的倒序排列
	/*@OrderBy("pDate desc")
	public Set<Product> getProducts() {
		return products;
	}
	public void setProducts(Set<Product> products) {
		this.products = products;
	}*/
	
}
