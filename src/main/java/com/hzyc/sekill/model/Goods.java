package com.hzyc.sekill.model;


import java.util.Date;
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
	private Date gaddtime;
	private Date gupdatetime;
	private Category category;
	private CategorySecond categorySecond;
	private Set<GoodsImg> goodsImg = new HashSet<GoodsImg>();
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
	public Date getGaddtime() {
		return gaddtime;
	}
	public void setGaddtime(Date gaddtime) {
		this.gaddtime = gaddtime;
	}
	public Date getGupdatetime() {
		return gupdatetime;
	}
	public void setGupdatetime(Date gupdatetime) {
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
	@OneToMany(mappedBy="goods",cascade = CascadeType.ALL)
	public Set<GoodsImg> getGoodsImg() {
		return goodsImg;
	}
	public void setGoodsImg(Set<GoodsImg> goodsImg) {
		this.goodsImg = goodsImg;
	}
	
	
	
	
}
