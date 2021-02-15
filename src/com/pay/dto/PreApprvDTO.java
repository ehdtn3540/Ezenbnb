package com.pay.dto;

public class PreApprvDTO {
	private String userid;
	private int aidx;
	private String adate;
	private String acheckin;
	private String acheckout;
	private int aperson;
	private int aprice;
	private String himage;
	private String hname;
	
	public PreApprvDTO() {
		super();
		// TODO Auto-generated constructor stub
	}

	public PreApprvDTO(String userid, int aidx, String adate, String acheckin, String acheckout, int aperson,
			int aprice, String himage, String hname) {
		super();
		this.userid = userid;
		this.aidx = aidx;
		this.adate = adate;
		this.acheckin = acheckin;
		this.acheckout = acheckout;
		this.aperson = aperson;
		this.aprice = aprice;
		this.himage = himage;
		this.hname = hname;
	}

	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	public int getAidx() {
		return aidx;
	}

	public void setAidx(int aidx) {
		this.aidx = aidx;
	}

	public String getAdate() {
		return adate;
	}

	public void setAdate(String adate) {
		this.adate = adate;
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

	public int getAperson() {
		return aperson;
	}

	public void setAperson(int aperson) {
		this.aperson = aperson;
	}

	public int getAprice() {
		return aprice;
	}

	public void setAprice(int aprice) {
		this.aprice = aprice;
	}

	public String getHimage() {
		return himage;
	}

	public void setHimage(String himage) {
		this.himage = himage;
	}

	public String getHname() {
		return hname;
	}

	public void setHname(String hname) {
		this.hname = hname;
	}
	
}
