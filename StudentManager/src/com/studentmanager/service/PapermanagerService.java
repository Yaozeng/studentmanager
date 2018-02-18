package com.studentmanager.service;

import java.util.List;

import com.studentmanager.dao.PapermanagerDao;
import com.studentmanager.pojo.Paper;
import com.studentmanager.pojo.PaperManager;

public class PapermanagerService {
	PapermanagerDao dao=new PapermanagerDao();
	public List findAll() throws Exception{
		return dao.findAll();
	}
	public void save(PaperManager papermanager) throws Exception {
		dao.save(papermanager);
	}
	public void addPaperManager(PaperManager papermanager) throws Exception {
		// TODO Auto-generated method stub
		dao.addPapermanager(papermanager);
	}
	public void delete(PaperManager papermanager) throws Exception {
		// TODO Auto-generated method stub
		dao.delete(papermanager);
	}
	public PaperManager findById(int papermanager) throws Exception {
		// TODO Auto-generated method stub
		return dao.findById(papermanager);
	}
}
