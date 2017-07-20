package com.hzyc.sekill.model;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import org.springframework.format.annotation.DateTimeFormat;
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
	private String name;
	private Goods goods;
	@DateTimeFormat(pattern="yyyy-MM-dd HH:mm:ss")
	private Date starttime;//秒杀活动开始时间
	@DateTimeFormat(pattern="yyyy-MM-dd HH:mm:ss")
	private Date endtime;//秒杀活动结束时间
	private double price;
	private int totalcount;//参与秒杀活动商品总数
	private int remcount;//参与秒杀活动商品剩余数量
	@DateTimeFormat(pattern="yyyy-MM-dd HH:mm:ss")
	private Date addtime;
	@DateTimeFormat(pattern="yyyy-MM-dd HH:mm:ss")
	private Date updatetime;
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	public int getSid() {
		return sid;
	}
	public void setSid(int sid) {
		this.sid = sid;
	}
	@OneToOne(targetEntity=Goods.class,optional = true,fetch = FetchType.LAZY)
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
	public Date getAddtime() {
		return addtime;
	}
	public void setAddtime(Date addtime) {
		this.addtime = addtime;
	}
	public Date getUpdatetime() {
		return updatetime;
	}
	public void setUpdatetime(Date updatetime) {
		this.updatetime = updatetime;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
	
}
