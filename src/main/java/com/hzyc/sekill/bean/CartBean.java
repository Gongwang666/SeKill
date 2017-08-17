package com.hzyc.sekill.bean;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

public class CartBean implements Serializable{
	private static final long serialVersionUID = -7319204851351661829L;
	private double totalMoney;//商品总价
	private List<GoodsBean> list = new ArrayList<GoodsBean>();
	public double getTotalMoney() {
		return totalMoney;
	}
	public void setTotalMoney(double totalMoney) {
		this.totalMoney = totalMoney;
	}
	public List<GoodsBean> getList() {
		return list;
	}
	public void setList(List<GoodsBean> list) {
		this.list = list;
	}
	
	
}
