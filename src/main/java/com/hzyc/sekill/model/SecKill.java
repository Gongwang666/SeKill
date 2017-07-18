package com.hzyc.sekill.model;

import java.util.Date;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;
/**
 * 
 * 秒杀实体类
 * @author 龚旺
 *
 */
@Entity
@Table(name="seckill")
public class SecKill {
	private int sid;
	private Goods goods;
	private Date starttime;//秒杀活动开始时间
	private Date endtime;//秒杀活动结束时间
	private double price;
	private int totalcount;//参与秒杀活动商品总数
	private int remcount;//参与秒杀活动商品剩余数量
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	public int getSid() {
		return sid;
	}
	public void setSid(int sid) {
		this.sid = sid;
	}
	@OneToOne(cascade = CascadeType.ALL)
	@JoinColumn(name="gid")
	public Goods getGoods() {
		return goods;
	}
	public void setGoods(Goods goods) {
		this.goods = goods;
	}
	public Date getStarttime() {
		return starttime;
	}
	public void setStarttime(Date starttime) {
		this.starttime = starttime;
	}
	public Date getEndtime() {
		return endtime;
	}
	public void setEndtime(Date endtime) {
		this.endtime = endtime;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public int getTotalcount() {
		return totalcount;
	}
	public void setTotalcount(int totalcount) {
		this.totalcount = totalcount;
	}
	public int getRemcount() {
		return remcount;
	}
	public void setRemcount(int remcount) {
		this.remcount = remcount;
	}
	
	
}
