package org.gym.dao;

import java.util.List;

import org.gym.dto.Gymnasium;

public interface GymDao {
	
	//�����������
	public void addGym(Gymnasium gymnasium);
	
	//��ѯ������������
	public List findAllGym();
	
	//��ID��ѯ������
	public List findById(Gymnasium gymnasium);
	
	//�޸���������
	public void updateGym(Gymnasium gymnasium);
	
	

}
