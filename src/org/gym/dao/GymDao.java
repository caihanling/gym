package org.gym.dao;

import java.util.List;

import org.gym.dto.Gymnasium;

public interface GymDao {
	
	//添加体育场馆
	public void addGym(Gymnasium gymnasium);
	
	//查询所有体育场馆
	public List findAllGym();
	
	//按ID查询体育馆
	public List findById(Gymnasium gymnasium);
	
	//修改体育场馆
	public void updateGym(Gymnasium gymnasium);
	
	

}
