package org.gym.impl;

import java.util.List;

import org.gym.dao.GymDao;
import org.gym.dto.Gymnasium;
import org.springframework.orm.hibernate3.HibernateTemplate;

public class GymImpl implements GymDao{
	private HibernateTemplate hibernateTemplate;
	

	public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
		this.hibernateTemplate = hibernateTemplate;
	}


	@Override
	public void addGym(Gymnasium gymnasium) {
		hibernateTemplate.save(gymnasium);
	}


	@Override
	public List findAllGym() {
		return hibernateTemplate.find("from Gymnasium");
	}


	@Override
	public List findById(Gymnasium gymnasium) {
		return hibernateTemplate.find("from Gymnasium where gid=?", new Object[]{gymnasium.getGid()});
	}


	@Override
	public void updateGym(Gymnasium gymnasium) {
		hibernateTemplate.update(gymnasium);
	}

}
