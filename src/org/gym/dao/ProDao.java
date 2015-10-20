package org.gym.dao;

import java.util.List;

import org.gym.dto.Project;

public interface ProDao {
	//查询羽毛球项目
	public List badminton();
	//查询篮球项目
	public List baskteball();
	//查询乒乓球项目
	public List pingpong();
	//查询网球项目
	public List tennis();
	//查询足球项目
	public List football();
	//按体育场馆查询
	public List findByGym(Project project);
	//按id查询project
	public Project findById(Project project);

}
