package Model;

import java.sql.Date;

public class Member {
	
	private Integer id;
	private String name;
	private Date birthday;
	private String phone;
	public Member() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Member(Integer id, String name, Date birthday, String phone) {
		super();
		this.id = id;
		this.name = name;
		this.birthday = birthday;
		this.phone = phone;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Date getBirthday() {
		return birthday;
	}
	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	
	
}
