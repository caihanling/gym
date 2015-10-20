package org.gym.biz;

import java.util.List;

import org.gym.dao.UsersDao;
import org.gym.dto.Users;

public class UsersService {
	private UsersDao usersDao;

	public void setUsersDao(UsersDao usersDao) {
		this.usersDao = usersDao;
	}

	//ע��
	public void register(Users users){
		usersDao.register(users);
	}
	
	//��¼
	public List login(Users users){
		return usersDao.login(users);
	}
	
	//��ʾ�����û�
	public List findAllUser(){
		return usersDao.findAllUser();
	}
	
	//�����û�
	public void update(Users users){
		usersDao.update(users);
	}
}
