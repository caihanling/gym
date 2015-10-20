package org.gym.dto;

import java.util.HashSet;
import java.util.Set;

/**
 * Users entity. @author MyEclipse Persistence Tools
 */

public class Users implements java.io.Serializable {

	// Fields

	private Integer userid;
	private String uname;
	private String upass;
	private String uphone;
	private String email;
	private Integer state;
	private Set histories = new HashSet(0);

	// Constructors

	/** default constructor */
	public Users() {
	}

	/** full constructor */
	public Users(String uname, String upass, String uphone, String email,
			Integer state, Set histories) {
		this.uname = uname;
		this.upass = upass;
		this.uphone = uphone;
		this.email = email;
		this.state = state;
		this.histories = histories;
	}

	// Property accessors

	public Integer getUserid() {
		return this.userid;
	}

	public void setUserid(Integer userid) {
		this.userid = userid;
	}

	public String getUname() {
		return this.uname;
	}

	public void setUname(String uname) {
		this.uname = uname;
	}

	public String getUpass() {
		return this.upass;
	}

	public void setUpass(String upass) {
		this.upass = upass;
	}

	public String getUphone() {
		return this.uphone;
	}

	public void setUphone(String uphone) {
		this.uphone = uphone;
	}

	public String getEmail() {
		return this.email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public Integer getState() {
		return this.state;
	}

	public void setState(Integer state) {
		this.state = state;
	}

	public Set getHistories() {
		return this.histories;
	}

	public void setHistories(Set histories) {
		this.histories = histories;
	}

}