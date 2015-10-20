package org.gym.biz;

import org.gym.dto.History;
import org.gym.impl.HisImpl;

public class HisServer {
	private HisImpl hisDao;
	
	public void setHisDao(HisImpl hisDao) {
		this.hisDao = hisDao;
	}

	//Ô¤¶©Ä³¸ö³¡µØ
	public void addHistory(History history){
		hisDao.addHistory(history);
	}

}
