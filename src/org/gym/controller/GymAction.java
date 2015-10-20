package org.gym.controller;

import java.util.List;

import org.gym.biz.GymService;
import org.gym.dto.Gymnasium;

import com.opensymphony.xwork2.ModelDriven;

public class GymAction implements ModelDriven<Gymnasium>{
	private Gymnasium gymnasium;
	private GymService gymService;
	private List<Gymnasium> list;
	private Gymnasium getgymnasium;
	

	public Gymnasium getGetgymnasium() {
		return getgymnasium;
	}

	public void setGetgymnasium(Gymnasium getgymnasium) {
		this.getgymnasium = getgymnasium;
	}

	public List<Gymnasium> getList() {
		return list;
	}

	public void setList(List<Gymnasium> list) {
		this.list = list;
	}

	public Gymnasium getGymnasium() {
		return gymnasium;
	}

	public void setGymnasium(Gymnasium gymnasium) {
		this.gymnasium = gymnasium;
	}
	
	public void setGymService(GymService gymService) {
		this.gymService = gymService;
	}

	@Override
	public Gymnasium getModel() {
		return gymnasium;
	}
	
	//添加场馆
	public String addGym(){
		gymService.addGym(gymnasium);
		return "addGym";
	}
	
	//查询所有场馆
	public String findAllGym(){
		list = gymService.findAllGym();
		System.out.println(list.size());
		return "findAllGym";
	}
	
	//更新场馆前的查询
	public String findAllGym1(){
		list = gymService.findAllGym();
		return "gotoupdate";
	}
	
	//根据id查找
	public String findById(){
		getgymnasium = (Gymnasium) gymService.findById(gymnasium).get(0);
		return "findById";
	}
	
	//修改体育场馆
	public String updateGym(){
		gymService.updateGym(gymnasium);
		return "updateGym";
	}



}
