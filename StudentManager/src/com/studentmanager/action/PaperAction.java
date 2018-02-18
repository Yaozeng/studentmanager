package com.studentmanager.action;

import java.util.Date;
import com.studentmanager.pojo.Paper;
import com.studentmanager.service.PaperService;
import com.sun.org.apache.commons.logging.Log;
import com.sun.org.apache.commons.logging.LogFactory;

public class PaperAction {
	public Paper paper=new Paper();
	PaperService service=new PaperService();
	Log log=LogFactory.getLog(this.getClass());
	public String findById(){
		try{
		paper=service.findById(paper.getPaper_id());
		}
		catch(Exception e){
			return "error";
		}
		return "edit";
	}
	public String addPaper(){
		try{
		service.addPaper(paper);
		}
		catch(Exception e){
			return "error";
		}
		return "paperAdd";
	}
	public String save(){
		try{
	    service.save(paper);
		}
		catch(Exception e){
			return "error";
		}
		return "save";
	}
	public String delete(){
		try{
		service.delete(paper);
		}
		catch(Exception e){
		return "error";
		}
		return "paper";
	}
}
