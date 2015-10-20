package org.gym.biz;

import java.util.List;

import org.gym.dto.Gymnasium;
import org.gym.impl.GymImpl;

public class GymService {
	private GymImpl gymDao;

	public void setGymDao(GymImpl gymDao) {
		this.gymDao = gymDao;
	}
	
	//��ӳ���
	public void addGym(Gymnasium gymnasium){
		gymDao.addGym(gymnasium);
	}
	
	//��ѯ���г���
	public List<Gymnasium> findAllGym(){
		return gymDao.findAllGym();
	}
	
	//��GID��ѯ
	public List findById(Gymnasium gymnasium){
		return gymDao.findById(gymnasium);
	}
	
	//�޸���������
	public void updateGym(Gymnasium gymnasium){
		gymDao.updateGym(gymnasium);
	}

}
