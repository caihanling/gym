package org.gym.dao;

import java.util.List;

import org.gym.dto.Users;

public interface UsersDao {
	//注册
	public void register(Users users);
	//登录
	public List login(Users users);
	
	//显示所有用户
	public List findAllUser();
	
	//修改用户信息
	public void update(Users users);

}
