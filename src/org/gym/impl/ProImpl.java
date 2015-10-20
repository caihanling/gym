package org.gym.impl;

import java.util.List;

import org.gym.dao.ProDao;
import org.gym.dto.Gymnasium;
import org.gym.dto.Project;
import org.springframework.orm.hibernate3.HibernateTemplate;

public class ProImpl implements ProDao{
	private HibernateTemplate hibernateTemplate;

	public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
		this.hibernateTemplate = hibernateTemplate;
	}

	@Override
	public List badminton() {
		return hibernateTemplate.find("from Project where pcategory='ÓðÃ«Çò'");
	}

	@Override
	public List baskteball() {
		return hibernateTemplate.find("from Project where pcategory='ÀºÇò'");
	}

	@Override
	public List football() {
		return hibernateTemplate.find("from Project where pcategory='×ãÇò'");
	}

	@Override
	public List pingpong() {
		return hibernateTemplate.find("from Project where pcategory='Æ¹ÅÒÇò'");
	}

	@Override
	public List tennis() {
		return hibernateTemplate.find("from Project where pcategory='ÍøÇò'");
	}

	@Override
	public List findByGym(Project project) {
		//System.out.println(project.getGymnasium().getGid());
		return hibernateTemplate.find("from Project where gid=?",new Object[]{project.getGymnasium().getGid()});
		//return hibernateTemplate.find("from Project where gid=1");
	}

	@Override
	public Project findById(Project project) {
		return (Project) hibernateTemplate.find("from Project where pid=?", new Object[]{project.getPid()}).get(0);
	}

}
