package org.gym.dao;

import java.util.List;

import org.gym.dto.Users;

public interface UsersDao {
	//ע��
	public void register(Users users);
	//��¼
	public List login(Users users);
	
	//��ʾ�����û�
	public List findAllUser();
	
	//�޸��û���Ϣ
	public void update(Users users);

}
