package com.pay.dto;

public class ReservDTO {
	private int midx;
	private int aidx;
	private String astate;
	private String aarea;
	private String hname;
	private String acheckin;
	private String acheckout;
	
	public ReservDTO() {
		super();
		// TODO Auto-generated constructor stub
	}

	public ReservDTO(int midx, int aidx, String astate, String aarea, String hname, String acheckin, String acheckout) {
		super();
		this.midx = midx;
		this.aidx = aidx;
		this.astate = astate;
		this.aarea = aarea;
		this.hname = hname;
		this.acheckin = acheckin;
		this.acheckout = acheckout;
	}

	public int getMidx() {
		return midx;
	}

	public void setMidx(int midx) {
		this.midx = midx;
	}

	public int getAidx() {
		return aidx;
	}

	public void setAidx(int aidx) {
		this.aidx = aidx;
	}

	public String getAstate() {
		return astate;
	}

	public void setAstate(String astate) {
		this.astate = astate;
	}

	public String getAarea() {
		return aarea;
	}

	public void setAarea(String aarea) {
		this.aarea = aarea;
	}

	public String getHname() {
		return hname;
	}

	public void setHname(String hname) {
		this.hname = hname;
	}

	public String getAcheckin() {
		return acheckin;
	}

	public void setAcheckin(String acheckin) {
		this.acheckin = acheckin;
	}

	public String getAcheckout() {
		return acheckout;
	}

	public void setAcheckout(String acheckout) {
		this.acheckout = acheckout;
	}

	
}
