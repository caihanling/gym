package org.gym.dao;

import java.util.List;

import org.gym.dto.Project;

public interface ProDao {
	//��ѯ��ë����Ŀ
	public List badminton();
	//��ѯ������Ŀ
	public List baskteball();
	//��ѯƹ������Ŀ
	public List pingpong();
	//��ѯ������Ŀ
	public List tennis();
	//��ѯ������Ŀ
	public List football();
	//���������ݲ�ѯ
	public List findByGym(Project project);
	//��id��ѯproject
	public Project findById(Project project);

}
