package Model;

import java.io.Serializable;
import java.sql.Date;

public class Member implements Serializable {
	
	private Integer id;
	private String name;
	private Date birthday;
	private String phone;
	private String email;
	private Integer group_id;
	private String group_name;
	public Member() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	

	

	public Member(Integer id, String name, Date birthday, String phone, String email, Integer group_id,
			String group_name) {
		super();
		this.id = id;
		this.name = name;
		this.birthday = birthday;
		this.phone = phone;
		this.email = email;
		this.group_id = group_id;
		this.group_name = group_name;
	}





	public String getGroup_name() {
		return group_name;
	}





	public void setGroup_name(String group_name) {
		this.group_name = group_name;
	}





	public Integer getGroup_id() {
		return group_id;
	}



	public void setGroup_id(Integer group_id) {
		this.group_id = group_id;
	}



	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
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
