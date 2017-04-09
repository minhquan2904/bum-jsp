package Model;

import java.io.Serializable;
import java.sql.Date;

public class Group_regist implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Integer id;
	private String name;
	private Date foundation;
	private String leader_name;
	private Date ld_birthday;
	private String ld_phone;
	private String email;
	private String school;
	private Integer status;
	public Group_regist() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Group_regist(Integer id, String name, Date foundation, String leader_name, Date ld_birthday, String ld_phone,
			String email, String school, Integer status) {
		super();
		this.id = id;
		this.name = name;
		this.foundation = foundation;
		this.leader_name = leader_name;
		this.ld_birthday = ld_birthday;
		this.ld_phone = ld_phone;
		this.email = email;
		this.school = school;
		this.status = status;
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
	public Date getFoundation() {
		return foundation;
	}
	public void setFoundation(Date foundation) {
		this.foundation = foundation;
	}
	public String getLeader_name() {
		return leader_name;
	}
	public void setLeader_name(String leader_name) {
		this.leader_name = leader_name;
	}
	public Date getLd_birthday() {
		return ld_birthday;
	}
	public void setLd_birthday(Date ld_birthday) {
		this.ld_birthday = ld_birthday;
	}
	public String getLd_phone() {
		return ld_phone;
	}
	public void setLd_phone(String ld_phone) {
		this.ld_phone = ld_phone;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getSchool() {
		return school;
	}
	public void setSchool(String school) {
		this.school = school;
	}
	public Integer getStatus() {
		return status;
	}
	public void setStatus(Integer status) {
		this.status = status;
	}
	
	
	
}
