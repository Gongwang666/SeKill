package com.hzyc.sekill.model;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.IdClass;
import javax.persistence.Table;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name="success_killed")
@IdClass(SuccessKilledKeys.class)
public class SuccessKilled {
	private int sid;
	private int uid;
	private int state;
	@DateTimeFormat(pattern="yyyy-MM-dd HH:mm:ss")
	private Date createtime;
	
	
	public SuccessKilled() {
	}
	public SuccessKilled(int sid, int uid, int state, Date createtime) {
		this.sid = sid;
		this.uid = uid;
		this.state = state;
		this.createtime = createtime;
	}
	@Id
	public int getSid() {
		return sid;
	}
	public void setSid(int sid) {
		this.sid = sid;
	}
	@Id
	public int getUid() {
		return uid;
	}
	public void setUid(int uid) {
		this.uid = uid;
	}
	public int getState() {
		return state;
	}
	public void setState(int state) {
		this.state = state;
	}
	public Date getCreatetime() {
		return createtime;
	}
	public void setCreatetime(Date createtime) {
		this.createtime = createtime;
	}
	
}
