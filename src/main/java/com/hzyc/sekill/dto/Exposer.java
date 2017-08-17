package com.hzyc.sekill.dto;

public class Exposer {

	private boolean exposed;
	
	private String md5;
	
	private int sid;
	
	private long now;
	
	private long start;
	
	private long end;
	
	public Exposer(boolean exposed, int sid) {
		this.exposed = exposed;
		this.sid = sid;
	}

	public Exposer(boolean exposed, int sid, long now, long start, long end) {
		this.exposed = exposed;
		this.sid = sid;
		this.now = now;
		this.start = start;
		this.end = end;
	}

	public Exposer(boolean exposed, String md5, int sid) {
		this.exposed = exposed;
		this.md5 = md5;
		this.sid = sid;
	}

	public boolean isExposed() {
		return exposed;
	}

	public void setExposed(boolean exposed) {
		this.exposed = exposed;
	}

	public String getMd5() {
		return md5;
	}

	public void setMd5(String md5) {
		this.md5 = md5;
	}

	public int getSid() {
		return sid;
	}

	public void setSid(int sid) {
		this.sid = sid;
	}

	public long getNow() {
		return now;
	}

	public void setNow(long now) {
		this.now = now;
	}

	public long getStart() {
		return start;
	}

	public void setStart(long start) {
		this.start = start;
	}

	public long getEnd() {
		return end;
	}

	public void setEnd(long end) {
		this.end = end;
	}

	@Override
	public String toString() {
		return "Exposer [exposed=" + exposed + ", md5=" + md5 + ", sid=" + sid + ", now=" + now + ", start=" + start
				+ ", end=" + end + "]";
	}
	
}
