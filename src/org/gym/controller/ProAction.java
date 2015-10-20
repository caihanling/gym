package org.gym.controller;

import java.util.List;

import org.gym.biz.ProServer;
import org.gym.dto.Project;

import com.opensymphony.xwork2.ModelDriven;

public class ProAction implements ModelDriven<Project>{
	private ProServer proServer;
	private Project project;
	private List list;


	public List getList() {
		return list;
	}

	public void setList(List list) {
		this.list = list;
	}

	public Project getProject() {
		return project;
	}

	public void setProject(Project project) {
		this.project = project;
	}

	public void setProServer(ProServer proServer) {
		this.proServer = proServer;
	}

	@Override
	public Project getModel() {
		return project;
	}
	
	//查询羽毛球项目
	public String badminton(){
		list = proServer.badminton();
		return "showPro";
	}
	//查询篮球项目
	public String baskteball(){
		list = proServer.baskteball();
		return "showPro";
	}
	//查询乒乓球项目
	public String pingpong(){
		list = proServer.pingpong();
		return "showPro";
	}
	//查询网球项目
	public String tennis(){
		list = proServer.tennis();
		return "showPro";
	}
	//查询足球项目
	public String football(){
		list = proServer.football();
		return "showPro";
	}
	//按场馆查询
	public String findByGym(){
		//System.out.println(project.getGymnasium().getGid());
		list = proServer.findByGym(project);
		return "findByGym";
	}
	//按id查询project 
	public String findById(){
		project = proServer.findById(project);
		return "findById";
	}
}
