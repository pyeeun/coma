package coma;

public class Users {
	
	private String userid;
	private String passwd;
	private String birth;
	private String area;
	private String email;
	private String register_date;
	private String update_date;
	private Boolean maskalarm_yn;
	private Boolean use_yn;
	private String withdraw_date;
	
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getPasswd() {
		return passwd;
	}
	public void setPasswd(String passwd) {
		this.passwd = passwd;
	}
	public String getBirth() {
		return birth;
	}
	public void setBirth(String birth) {
		this.birth = birth;
	}
	public String getArea() {
		return area;
	}
	public void setArea(String area) {
		this.area = area;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getRegister_date() {
		return register_date;
	}
	public void setRegister_date(String register_date) {
		this.register_date = register_date;
	}
	public String getUpdate_date() {
		return update_date;
	}
	public void setUpdate_date(String update_date) {
		this.update_date = update_date;
	}
	public Boolean getMaskalarm_yn() {
		return maskalarm_yn;
	}
	public void setMaskalarm_yn(Boolean maskalarm_yn) {
		this.maskalarm_yn = maskalarm_yn;
	}
	public Boolean getUse_yn() {
		return use_yn;
	}
	public void setUse_yn(Boolean use_yn) {
		this.use_yn = use_yn;
	}
	public String getWithdraw_date() {
		return withdraw_date;
	}
	public void setWithdraw_date(String withdraw_date) {
		this.withdraw_date = withdraw_date;
	}
	
}
