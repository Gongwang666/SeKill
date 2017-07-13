package com.hzyc.sekill.model;


import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;



/**
 * 
 * 商品的实体类
 * @author 龚旺
 *
 */
@Entity
@Table(name="goods")
public class Goods {
	private int gid;
	private String gname;
	private Double gprice;
	private int gcount;
	private String gdesc;
	private String gaddtime;
	private String gupdatetime;
	private Category category;
	private CategorySecond categorySecond;
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	public int getGid() {
		return gid;
	}
	public void setGid(int gid) {
		this.gid = gid;
	}
	public String getGname() {
		return gname;
	}
	public void setGname(String gname) {
		this.gname = gname;
	}
	public Double getGprice() {
		return gprice;
	}
	public void setGprice(Double gprice) {
		this.gprice = gprice;
	}
	public int getGcount() {
		return gcount;
	}
	public void setGcount(int gcount) {
		this.gcount = gcount;
	}
	public String getGdesc() {
		return gdesc;
	}
	public void setGdesc(String gdesc) {
		this.gdesc = gdesc;
	}
	public String getGaddtime() {
		return gaddtime;
	}
	public void setGaddtime(String gaddtime) {
		this.gaddtime = gaddtime;
	}
	public String getGupdatetime() {
		return gupdatetime;
	}
	public void setGupdatetime(String gupdatetime) {
		this.gupdatetime = gupdatetime;
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
	//设置与二级分类的多对一关联
	@ManyToOne(targetEntity=CategorySecond.class,optional = true,fetch = FetchType.LAZY)
	@JoinColumn(name="csid")
	public CategorySecond getCategorySecond() {
		return categorySecond;
	}
	public void setCategorySecond(CategorySecond categorySecond) {
		this.categorySecond = categorySecond;
	}
	
	
	
}
