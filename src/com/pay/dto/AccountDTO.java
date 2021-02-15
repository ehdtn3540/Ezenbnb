package com.pay.dto;

public class AccountDTO {
	private int aidx;
	private int midx;
	private int hidx;
	
	private String acheckin;
	private String acheckout;
	private int aperson;
	
	private int aprice;
	private String astate;
	private String acard;
	
	private String acardnum;
	private String aexdate;
	private String acvv;
	
	private String apostnum;
	private String aarea;
	private String adate;
	public AccountDTO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public AccountDTO(int aidx, int midx, int hidx, String acheckin, String acheckout, int aperson, int aprice,
			String astate, String acard, String acardnum, String aexdate, String acvv, String apostnum, String aarea,
			String adate) {
		super();
		this.aidx = aidx;
		this.midx = midx;
		this.hidx = hidx;
		this.acheckin = acheckin;
		this.acheckout = acheckout;
		this.aperson = aperson;
		this.aprice = aprice;
		this.astate = astate;
		this.acard = acard;
		this.acardnum = acardnum;
		this.aexdate = aexdate;
		this.acvv = acvv;
		this.apostnum = apostnum;
		this.aarea = aarea;
		this.adate = adate;
	}
	public int getAidx() {
		return aidx;
	}
	public void setAidx(int aidx) {
		this.aidx = aidx;
	}
	public int getMidx() {
		return midx;
	}
	public void setMidx(int midx) {
		this.midx = midx;
	}
	public int getHidx() {
		return hidx;
	}
	public void setHidx(int hidx) {
		this.hidx = hidx;
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
	public String getAstate() {
		return astate;
	}
	public void setAstate(String astate) {
		this.astate = astate;
	}
	public String getAcard() {
		return acard;
	}
	public void setAcard(String acard) {
		this.acard = acard;
	}
	public String getAcardnum() {
		return acardnum;
	}
	public void setAcardnum(String acardnum) {
		this.acardnum = acardnum;
	}
	public String getAexdate() {
		return aexdate;
	}
	public void setAexdate(String aexdate) {
		this.aexdate = aexdate;
	}
	public String getAcvv() {
		return acvv;
	}
	public void setAcvv(String acvv) {
		this.acvv = acvv;
	}
	public String getApostnum() {
		return apostnum;
	}
	public void setApostnum(String apostnum) {
		this.apostnum = apostnum;
	}
	public String getAarea() {
		return aarea;
	}
	public void setAarea(String aarea) {
		this.aarea = aarea;
	}
	public String getAdate() {
		return adate;
	}
	public void setAdate(String adate) {
		this.adate = adate;
	}
}
