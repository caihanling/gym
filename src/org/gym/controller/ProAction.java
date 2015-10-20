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
	
	//��ѯ��ë����Ŀ
	public String badminton(){
		list = proServer.badminton();
		return "showPro";
	}
	//��ѯ������Ŀ
	public String baskteball(){
		list = proServer.baskteball();
		return "showPro";
	}
	//��ѯƹ������Ŀ
	public String pingpong(){
		list = proServer.pingpong();
		return "showPro";
	}
	//��ѯ������Ŀ
	public String tennis(){
		list = proServer.tennis();
		return "showPro";
	}
	//��ѯ������Ŀ
	public String football(){
		list = proServer.football();
		return "showPro";
	}
	//�����ݲ�ѯ
	public String findByGym(){
		//System.out.println(project.getGymnasium().getGid());
		list = proServer.findByGym(project);
		return "findByGym";
	}
	//��id��ѯproject 
	public String findById(){
		project = proServer.findById(project);
		return "findById";
	}
}
