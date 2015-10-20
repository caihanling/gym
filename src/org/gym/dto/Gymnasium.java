package org.gym.dto;

import java.util.HashSet;
import java.util.Set;

/**
 * Gymnasium entity. @author MyEclipse Persistence Tools
 */

public class Gymnasium implements java.io.Serializable {

	// Fields

	private Integer gid;
	private String gname;
	private String glocal;
	private String gphone;
	private String server;
	private String gpic;
	private Set projects = new HashSet(0);

	// Constructors

	/** default constructor */
	public Gymnasium() {
	}

	/** full constructor */
	public Gymnasium(String gname, String glocal, String gphone, String server,
			String gpic, Set projects) {
		this.gname = gname;
		this.glocal = glocal;
		this.gphone = gphone;
		this.server = server;
		this.gpic = gpic;
		this.projects = projects;
	}

	// Property accessors

	public Integer getGid() {
		return this.gid;
	}

	public void setGid(Integer gid) {
		this.gid = gid;
	}

	public String getGname() {
		return this.gname;
	}

	public void setGname(String gname) {
		this.gname = gname;
	}

	public String getGlocal() {
		return this.glocal;
	}

	public void setGlocal(String glocal) {
		this.glocal = glocal;
	}

	public String getGphone() {
		return this.gphone;
	}

	public void setGphone(String gphone) {
		this.gphone = gphone;
	}

	public String getServer() {
		return this.server;
	}

	public void setServer(String server) {
		this.server = server;
	}

	public String getGpic() {
		return this.gpic;
	}

	public void setGpic(String gpic) {
		this.gpic = gpic;
	}

	public Set getProjects() {
		return this.projects;
	}

	public void setProjects(Set projects) {
		this.projects = projects;
	}

}