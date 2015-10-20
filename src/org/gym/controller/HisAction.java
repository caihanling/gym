package org.gym.controller;

import org.gym.biz.HisServer;
import org.gym.dto.History;

import com.opensymphony.xwork2.ModelDriven;

public class HisAction implements ModelDriven<History>{
	private History history;
	private HisServer hisServer;

	public History getHistory() {
		return history;
	}

	public void setHistory(History history) {
		this.history = history;
	}

	public void setHisServer(HisServer hisServer) {
		this.hisServer = hisServer;
	}

	@Override
	public History getModel() {
		return history;
	}
	
	//Ô¤¶©Ä³¸ö³¡µØ
	public String addHistory(){
		hisServer.addHistory(history);
		return "addHistory";
	}

}
