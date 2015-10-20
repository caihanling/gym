package org.gym.controller;

import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;
import org.gym.biz.UsersService;
import org.gym.dto.Users;

import com.opensymphony.xwork2.ModelDriven;

public class UsersAction implements ModelDriven<Users>,SessionAware{
	private UsersService usersService;
	private Users users;
	private List<Users> userlist;
	private Map<String,Object> session;
	private Users getuser;
	
	
	public Map<String, Object> getSession() {
		return session;
	}
	public Users getGetuser() {
		return getuser;
	}
	public void setGetuser(Users getuser) {
		this.getuser = getuser;
	}
	public Users getUsers() {
		return users;
	}
	public void setUsers(Users users) {
		this.users = users;
	}

	public void setUsersService(UsersService usersService) {
		this.usersService = usersService;
	}

	public List<Users> getUserlist() {
		return userlist;
	}
	public void setUserlist(List<Users> userlist) {
		this.userlist = userlist;
	}
	@Override
	public Users getModel() {
		return users;
	}


	@Override
	public void setSession(Map<String, Object> session) {
		this.session = session;
		
	}

	//注册
	public String register(){
		usersService.register(users);
		session.put("getuser", getuser);
		return "register";
	}
	
	//登录
	public String login(){
		userlist = usersService.login(users);
		if(userlist.isEmpty()){
			//登录失败
			return "faillogin";
		}else{
			//登录成功
			getuser = userlist.get(0);
			session.put("getuser", getuser);
			if(getuser.getState()==0){
				return "userlogin";
			}else{
				return "managerlogin";
			}
		}
		
	}
	
	//退出登录
	public String exit(){
//		System.out.println(session.get("getuser"));
		session.remove("getuser");

		return "exit";
	}
	
	//显示所有用户
	public String findAllUser(){
		userlist = usersService.findAllUser();
		return "findAllUser";
	}
	
	//更新用户
	public String update(){
		usersService.update(users);
		return "update";
	}
}
