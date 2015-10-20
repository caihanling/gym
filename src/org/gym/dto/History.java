package org.gym.dto;

import java.sql.Timestamp;

/**
 * History entity. @author MyEclipse Persistence Tools
 */

public class History implements java.io.Serializable {

	// Fields

	private Integer hid;
	private Project project;
	private Users users;
	private Timestamp hdate;
	private Integer begintime;
	private Integer endtime;

	// Constructors

	/** default constructor */
	public History() {
	}

	/** full constructor */
	public History(Project project, Users users, Timestamp hdate,
			Integer begintime, Integer endtime) {
		this.project = project;
		this.users = users;
		this.hdate = hdate;
		this.begintime = begintime;
		this.endtime = endtime;
	}

	// Property accessors

	public Integer getHid() {
		return this.hid;
	}

	public void setHid(Integer hid) {
		this.hid = hid;
	}

	public Project getProject() {
		return this.project;
	}

	public void setProject(Project project) {
		this.project = project;
	}

	public Users getUsers() {
		return this.users;
	}

	public void setUsers(Users users) {
		this.users = users;
	}

	public Timestamp getHdate() {
		return this.hdate;
	}

	public void setHdate(Timestamp hdate) {
		this.hdate = hdate;
	}

	public Integer getBegintime() {
		return this.begintime;
	}

	public void setBegintime(Integer begintime) {
		this.begintime = begintime;
	}

	public Integer getEndtime() {
		return this.endtime;
	}

	public void setEndtime(Integer endtime) {
		this.endtime = endtime;
	}

}