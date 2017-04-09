package Model;

import java.io.Serializable;

public class Category implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = -7987797608103004293L;
	private Integer id;
	private String name;
	public Category() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Category(Integer id, String name) {
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
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
	
}
