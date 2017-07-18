package com.hzyc.sekill.model;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import org.hibernate.annotations.Cascade;
import org.hibernate.annotations.CascadeType;
/**
 * 
 * 商品附加属性实体类
 * @author 龚旺
 *
 */
@Entity
@Table(name="gattr")
public class GoodsAttr {
	private int id;
	//private int gid;
	private Template template;
	private Goods goods;
	
	public GoodsAttr() {
	}
	public GoodsAttr(Goods goods,Template template) {
		this.goods = goods;
		this.template = template;
	}
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	/*public int getGid() {
		return gid;
	}
	public void setGid(int gid) {
		this.gid = gid;
	}*/
	@ManyToOne(targetEntity=Template.class,optional = true,fetch = FetchType.LAZY)
	@JoinColumn(name="tid")
	public Template getTemplate() {
		return template;
	}
	public void setTemplate(Template template) {
		this.template = template;
	}
	@ManyToOne(targetEntity=Goods.class,optional = true,fetch = FetchType.LAZY)
	//@Cascade(value=CascadeType.SAVE_UPDATE)
	@JoinColumn(name="gid")
	public Goods getGoods() {
		return goods;
	}
	public void setGoods(Goods goods) {
		this.goods = goods;
	}
	
}
