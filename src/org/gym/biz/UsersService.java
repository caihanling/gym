package org.gym.biz;

import java.util.List;

import org.gym.dao.UsersDao;
import org.gym.dto.Users;

public class UsersService {
	private UsersDao usersDao;

	public void setUsersDao(UsersDao usersDao) {
		this.usersDao = usersDao;
	}

	//注册
	public void register(Users users){
		usersDao.register(users);
	}
	
	//登录
	public List login(Users users){
		return usersDao.login(users);
	}
	
	//显示所有用户
	public List findAllUser(){
		return usersDao.findAllUser();
	}
	
	//更新用户
	public void update(Users users){
		usersDao.update(users);
	}
}
