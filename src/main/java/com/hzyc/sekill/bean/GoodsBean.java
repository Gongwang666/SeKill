package com.hzyc.sekill.bean;

import java.io.Serializable;

import com.hzyc.sekill.model.Goods;

public class GoodsBean implements Serializable{
	private static final long serialVersionUID = 5215954476205718412L;
	private int gid;
	private String gname;
	private String img;
	private double price;
	private int count;//购买数量
	
	
	public GoodsBean() {
		super();
	}
	public GoodsBean(Goods goods) {
		this.gid = goods.getGid();
		this.gname = goods.getGname();
	}
	public GoodsBean(Goods goods,int count) {
		this.gid = goods.getGid();
		this.gname = goods.getGname();
		this.img = goods.getGoodsImg().get(0).getSrc();
		this.price = goods.getSeckill().getPrice();
		this.count = count;
	}
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
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	@Override
	public String toString() {
		return "GoodsBean [gid=" + gid + ", gname=" + gname + ", img=" + img + ", price=" + price + ", count=" + count
				+ "]";
	}
	
}
