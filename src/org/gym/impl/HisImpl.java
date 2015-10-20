package org.gym.impl;

import java.sql.Timestamp;

import org.gym.dao.HisDao;
import org.gym.dto.History;
import org.springframework.orm.hibernate3.HibernateTemplate;


public class HisImpl implements HisDao{
	private HibernateTemplate hibernateTemplate;
	private java.sql.Timestamp date = new Timestamp(System.currentTimeMillis());

	public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
		this.hibernateTemplate = hibernateTemplate;
	}

	@Override
	public void addHistory(History history) {
		history.setHdate(date);
		hibernateTemplate.save(history);
	}

}
