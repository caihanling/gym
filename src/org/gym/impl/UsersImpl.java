package org.gym.impl;

import java.util.List;

import org.gym.dao.UsersDao;
import org.gym.dto.Users;
import org.springframework.orm.hibernate3.HibernateTemplate;

public class UsersImpl implements UsersDao{
	private HibernateTemplate hibernateTemplate;
	
	public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
		this.hibernateTemplate = hibernateTemplate;
	}

	//用户注册
	@Override
	public void register(Users users) {
		hibernateTemplate.save(users);
	}

	//用户登录
	@Override
	public List login(Users users) {
		return hibernateTemplate.find("from Users where uname=? and upass=? and state=?", new Object[]{users.getUname(),users.getUpass(),users.getState()});
		
	}

	@Override
	public List findAllUser() {
		return hibernateTemplate.find("from Users");
	}

	@Override
	public void update(Users users) {
		hibernateTemplate.update(users);
	}


}
