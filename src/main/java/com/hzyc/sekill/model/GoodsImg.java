package com.hzyc.sekill.model;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.hibernate.annotations.Cascade;
import org.hibernate.annotations.CascadeType;

@Entity
@Table(name="gimg")
public class GoodsImg {
	private int id;
	private String src;
	private Goods goods;
	
	public GoodsImg() {
		
	}
	public GoodsImg(String src, Goods goods) {
		this.src = src;
		this.goods = goods;
	}
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getSrc() {
		return src;
	}
	public void setSrc(String src) {
		this.src = src;
	}
	@ManyToOne(targetEntity=Goods.class,optional = true,fetch = FetchType.LAZY)
	@Cascade(value=CascadeType.MERGE)
	@JoinColumn(name="gid")
	public Goods getGoods() {
		return goods;
	}
	public void setGoods(Goods goods) {
		this.goods = goods;
	}
	
}
