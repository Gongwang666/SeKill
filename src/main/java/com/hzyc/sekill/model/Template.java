package com.hzyc.sekill.model;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.Table;

/**
 * 
 * 模板实体
 * @author 龚旺
 *
 */
@Entity
@Table(name="template")
public class Template {
	private int id;
	private String tname;
	private String tvalue;
	private CategorySecond categorySecond;
	private GoodsAttr goodsAttr;
	public Template() {
		
	}
	public Template(String tname, String tvalue,CategorySecond categorySecond) {
		this.tname = tname;
		this.tvalue = tvalue;
		this.categorySecond = categorySecond;
	}
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTname() {
		return tname;
	}
	public void setTname(String tname) {
		this.tname = tname;
	}
	public String getTvalue() {
		return tvalue;
	}
	public void setTvalue(String tvalue) {
		this.tvalue = tvalue;
	}
	@ManyToOne(targetEntity=CategorySecond.class,optional = true,fetch = FetchType.LAZY)
	//@Cascade(value=CascadeType.SAVE_UPDATE)
	@JoinColumn(name="csid")
	public CategorySecond getCategorySecond() {
		return categorySecond;
	}
	public void setCategorySecond(CategorySecond categorySecond) {
		this.categorySecond = categorySecond;
	}
	@OneToOne(mappedBy="template",cascade = CascadeType.ALL)
	public GoodsAttr getGoodsAttr() {
		return goodsAttr;
	}
	public void setGoodsAttr(GoodsAttr goodsAttr) {
		this.goodsAttr = goodsAttr;
	}
	
	
}
