package org.gym.biz;

import java.util.List;

import org.gym.dto.Gymnasium;
import org.gym.impl.GymImpl;

public class GymService {
	private GymImpl gymDao;

	public void setGymDao(GymImpl gymDao) {
		this.gymDao = gymDao;
	}
	
	//添加场馆
	public void addGym(Gymnasium gymnasium){
		gymDao.addGym(gymnasium);
	}
	
	//查询所有场馆
	public List<Gymnasium> findAllGym(){
		return gymDao.findAllGym();
	}
	
	//按GID查询
	public List findById(Gymnasium gymnasium){
		return gymDao.findById(gymnasium);
	}
	
	//修改体育场馆
	public void updateGym(Gymnasium gymnasium){
		gymDao.updateGym(gymnasium);
	}

}
