package com.hzyc.sekill.model;

import java.io.Serializable;

import javax.persistence.Embeddable;

@Embeddable
public class SuccessKilledKeys implements Serializable{
	private static final long serialVersionUID = -1575313034787331429L;
	private int sid;
	private int uid;
	public int getSid() {
		return sid;
	}
	public void setSid(int sid) {
		this.sid = sid;
	}
	public int getUid() {
		return uid;
	}
	public void setUid(int uid) {
		this.uid = uid;
	}
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + sid;
		result = prime * result + uid;
		return result;
	}
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		SuccessKilledKeys other = (SuccessKilledKeys) obj;
		if (sid != other.sid)
			return false;
		if (uid != other.uid)
			return false;
		return true;
	}
	
	
}
