package co.kr.sproject.vo;

public class UserVO {
	
	private String id;
	private String passwd;
	private String conpasswd;
	private String name;
	private String email;
	private String zip;
	private String addr;
	private String detail_addr;
	private String gender;
	private String birth_year;
	private String birth_month;
	private String birth_day;
	
	
	
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPasswd() {
		return passwd;
	}
	public void setPasswd(String passwd) {
		this.passwd = passwd;
	}
	public String getConpasswd() {
		return conpasswd;
	}
	public void setConpasswd(String conpasswd) {
		this.conpasswd = conpasswd;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getZip() {
		return zip;
	}
	public void setZip(String zip) {
		this.zip = zip;
	}
	public String getAddr() {
		return addr;
	}
	public void setAddr(String addr) {
		this.addr = addr;
	}
	public String getDetail_addr() {
		return detail_addr;
	}
	public void setDetail_addr(String detail_addr) {
		this.detail_addr = detail_addr;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getBirth_year() {
		return birth_year;
	}
	public void setBirth_year(String birth_year) {
		this.birth_year = birth_year;
	}
	public String getBirth_month() {
		return birth_month;
	}
	public void setBirth_month(String birth_month) {
		this.birth_month = birth_month;
	}
	public String getBirth_day() {
		return birth_day;
	}
	public void setBirth_day(String birth_day) {
		this.birth_day = birth_day;
	}
	@Override
	public String toString() {
		return "UserVO [id=" + id + ", passwd=" + passwd + ", conpasswd=" + conpasswd + ", name=" + name + ", email="
				+ email + ", zip=" + zip + ", addr=" + addr + ", detail_addr=" + detail_addr + ", gender=" + gender
				+ ", birth_year=" + birth_year + ", birth_month=" + birth_month + ", birth_day=" + birth_day + "]";
	}
	
	
	
	
	

}
