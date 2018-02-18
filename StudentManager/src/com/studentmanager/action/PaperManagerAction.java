package com.studentmanager.action;

import com.studentmanager.pojo.PaperManager;
import com.studentmanager.service.PapermanagerService;

public class PaperManagerAction {
	public PaperManager papermanager=new PaperManager();
	PapermanagerService service=new PapermanagerService();
	public String findById(){
		try {
			papermanager=service.findById(papermanager.getPapermanager_id());
		} catch (Exception e) {
			// TODO Auto-generated catch block
			return "error";
		}
		return "mod";
	}
	public String add(){
		try {
			service.addPaperManager(papermanager);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			return "error";
		}
		return "save";
	}
	public String delete(){
		try {
			service.delete(papermanager);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			return "error";
		}
		return "delete";
	}
	public String save(){
		try {
			service.save(papermanager);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			return "error";
		}
		return "save";
		
	}

}
