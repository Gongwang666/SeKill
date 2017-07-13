package com.hzyc.sekill.model;


import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.OrderBy;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;


/**
 * 
 * 一级分类实体类
 * @author 龚旺
 *
 */
@Entity
@Table(name="category")
public class Category{
	private int cid;
	private String cName;
	private Set<CategorySecond> categorySecondSet =new HashSet<CategorySecond>();
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	public int getCid() {
		return cid;
	}
	public void setCid(int cid) {
		this.cid = cid;
	}
	@Column(name="cname")
	public String getcName() {
		return cName;
	}
	public void setcName(String cName) {
		this.cName = cName;
	}
	//设置与二级分类的一对多关联
	//@OneToMany(cascade = CascadeType.ALL,mappedBy="category",fetch = FetchType.EAGER)
	@OneToMany(mappedBy="category",cascade = CascadeType.ALL)
	//根据csid的正序排列
	@OrderBy("csid asc")
	public Set<CategorySecond> getCategorySecondSet() {
		return categorySecondSet;
	}
	public void setCategorySecondSet(Set<CategorySecond> categorySecondSet) {
		this.categorySecondSet = categorySecondSet;
	}
	
}
