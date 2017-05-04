package Model;

import java.io.Serializable;

public class Option implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = -7987797608103004293L;
	private Integer id;
	private String name;
	private String link;
	
	public Option() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public Option(Integer id, String name, String link) {
		super();
		this.id = id;
		this.name = name;
		this.link = link;
	}

	public String getLink() {
		return link;
	}

	public void setLink(String link) {
		this.link = link;
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
