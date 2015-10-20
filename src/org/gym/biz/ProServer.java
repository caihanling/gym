package org.gym.biz;

import java.util.List;

import org.gym.dto.Project;
import org.gym.impl.ProImpl;

public class ProServer {
	private ProImpl proDao;

	public void setProDao(ProImpl proDao) {
		this.proDao = proDao;
	}
	
	//��ѯ��ë����Ŀ
	public List badminton(){
		return proDao.badminton();
	}
	//��ѯ������Ŀ
	public List baskteball(){
		return proDao.baskteball();
	}
	//��ѯƹ������Ŀ
	public List pingpong(){
		return proDao.pingpong();
	}
	//��ѯ������Ŀ
	public List tennis(){
		return proDao.tennis();
	}
	//��ѯ������Ŀ
	public List football(){
		return proDao.football();
	}
	//�����ݲ�ѯ
	public List findByGym(Project project){
		return proDao.findByGym(project);
	}
	//��id��ѯproject
	public Project findById(Project project){
		return proDao.findById(project);
	}

}
