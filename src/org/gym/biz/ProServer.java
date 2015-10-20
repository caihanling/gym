package org.gym.biz;

import java.util.List;

import org.gym.dto.Project;
import org.gym.impl.ProImpl;

public class ProServer {
	private ProImpl proDao;

	public void setProDao(ProImpl proDao) {
		this.proDao = proDao;
	}
	
	//查询羽毛球项目
	public List badminton(){
		return proDao.badminton();
	}
	//查询篮球项目
	public List baskteball(){
		return proDao.baskteball();
	}
	//查询乒乓球项目
	public List pingpong(){
		return proDao.pingpong();
	}
	//查询网球项目
	public List tennis(){
		return proDao.tennis();
	}
	//查询足球项目
	public List football(){
		return proDao.football();
	}
	//按场馆查询
	public List findByGym(Project project){
		return proDao.findByGym(project);
	}
	//按id查询project
	public Project findById(Project project){
		return proDao.findById(project);
	}

}
