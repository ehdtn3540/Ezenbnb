package com.pay.dto;

public class ReceiptDTO {
	private String adate; //예약날짜 및 결제날짜
	private int aidx;
	private int aperson; 
	private String acheckin;
	private String acheckout;
	private int aprice;
	private String acard;
	private String acardnum;
	
	private String hname;
	private String hcatg;
	private String haddress;
	
	public ReceiptDTO() {
		super();
		// TODO Auto-generated constructor stub
	}

	public ReceiptDTO(String adate, int aidx, int aperson, String acheckin, String acheckout, int aprice, String acard,
			String acardnum, String hname, String hcatg, String haddress) {
		super();
		this.adate = adate;
		this.aidx = aidx;
		this.aperson = aperson;
		this.acheckin = acheckin;
		this.acheckout = acheckout;
		this.aprice = aprice;
		this.acard = acard;
		this.acardnum = acardnum;
		this.hname = hname;
		this.hcatg = hcatg;
		this.haddress = haddress;
	}

	public String getAdate() {
		return adate;
	}

	public void setAdate(String adate) {
		this.adate = adate;
	}

	public int getAidx() {
		return aidx;
	}

	public void setAidx(int aidx) {
		this.aidx = aidx;
	}

	public int getAperson() {
		return aperson;
	}

	public void setAperson(int aperson) {
		this.aperson = aperson;
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

	public int getAprice() {
		return aprice;
	}

	public void setAprice(int aprice) {
		this.aprice = aprice;
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

	public String getHname() {
		return hname;
	}

	public void setHname(String hname) {
		this.hname = hname;
	}

	public String getHcatg() {
		return hcatg;
	}

	public void setHcatg(String hcatg) {
		this.hcatg = hcatg;
	}

	public String getHaddress() {
		return haddress;
	}

	public void setHaddress(String haddress) {
		this.haddress = haddress;
	}
	
	
}
