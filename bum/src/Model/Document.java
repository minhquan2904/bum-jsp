package Model;

import java.io.Serializable;
import java.sql.Date;


public class Document implements Serializable {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Integer id;
	private String title;
	private String content;
	private Date date;
	private Integer view;
	private String url;
	private Integer status;
	private Integer category;
	
	public Document() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Document(Integer id, String title, String content, Date date, Integer view, String url, Integer status,
			Integer category) {
		super();
		this.id = id;
		this.title = title;
		this.content = content;
		this.date = date;
		this.view = view;
		this.url = url;
		this.status = status;
		this.category = category;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	public Integer getView() {
		return view;
	}

	public void setView(Integer view) {
		this.view = view;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public Integer getStatus() {
		return status;
	}

	public void setStatus(Integer status) {
		this.status = status;
	}

	public Integer getCategory() {
		return category;
	}

	public void setCategory(Integer category) {
		this.category = category;
	}

	
}
