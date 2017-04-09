package Model;

import java.io.Serializable;

public class Role implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Integer id;
	private Integer name;
	public Role() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Role(Integer id, Integer name) {
		super();
		this.id = id;
		this.name = name;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public Integer getName() {
		return name;
	}
	public void setName(Integer name) {
		this.name = name;
	}
	
	
}
