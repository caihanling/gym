package org.gym.dto;

import java.util.HashSet;
import java.util.Set;

/**
 * Project entity. @author MyEclipse Persistence Tools
 */

public class Project implements java.io.Serializable {

	// Fields

	private Integer pid;
	private Gymnasium gymnasium;
	private String pname;
	private String pcategory;
	private Integer price;
	private String ppic;
	private Set histories = new HashSet(0);

	// Constructors

	/** default constructor */
	public Project() {
	}

	/** full constructor */
	public Project(Gymnasium gymnasium, String pname, String pcategory,
			Integer price, String ppic, Set histories) {
		this.gymnasium = gymnasium;
		this.pname = pname;
		this.pcategory = pcategory;
		this.price = price;
		this.ppic = ppic;
		this.histories = histories;
	}

	// Property accessors

	public Integer getPid() {
		return this.pid;
	}

	public void setPid(Integer pid) {
		this.pid = pid;
	}

	public Gymnasium getGymnasium() {
		return this.gymnasium;
	}

	public void setGymnasium(Gymnasium gymnasium) {
		this.gymnasium = gymnasium;
	}

	public String getPname() {
		return this.pname;
	}

	public void setPname(String pname) {
		this.pname = pname;
	}

	public String getPcategory() {
		return this.pcategory;
	}

	public void setPcategory(String pcategory) {
		this.pcategory = pcategory;
	}

	public Integer getPrice() {
		return this.price;
	}

	public void setPrice(Integer price) {
		this.price = price;
	}

	public String getPpic() {
		return this.ppic;
	}

	public void setPpic(String ppic) {
		this.ppic = ppic;
	}

	public Set getHistories() {
		return this.histories;
	}

	public void setHistories(Set histories) {
		this.histories = histories;
	}

}