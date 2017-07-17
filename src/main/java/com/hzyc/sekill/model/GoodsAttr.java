package com.hzyc.sekill.model;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;
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
	private int gid;
	private Template template;
	
	public GoodsAttr() {
	}
	public GoodsAttr(int gid,Template template) {
		this.gid = gid;
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
	public int getGid() {
		return gid;
	}
	public void setGid(int gid) {
		this.gid = gid;
	}
	@OneToOne(targetEntity=Template.class,optional = true,fetch = FetchType.LAZY)
	@JoinColumn(name="tid")
	public Template getTemplate() {
		return template;
	}
	public void setTemplate(Template template) {
		this.template = template;
	}
	
}
