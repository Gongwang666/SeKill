package com.hzyc.sekill.bean;

import com.hzyc.sekill.model.Goods;

public class GoodsBean {
	private int gid;
	private String gname;
	
	public GoodsBean(Goods goods) {
		this.gid = goods.getGid();
		this.gname = goods.getGname();
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
	
}
