package com.studentmanager.service;

import java.sql.SQLException;
import java.util.List;

import com.studentmanager.dao.PaperDao;
import com.studentmanager.pojo.Paper;
import com.studentmanager.pojo.User;

public class PaperService {
	PaperDao dao=new PaperDao();
	public List findAll() throws Exception{
		return dao.findAll();
	}
	public void save(Paper paper) throws Exception {
		dao.save(paper);
	}
	public void addPaper(Paper paper) throws Exception {
		// TODO Auto-generated method stub
		dao.addPaper(paper);
	}
	public void delete(Paper paper) throws Exception {
		// TODO Auto-generated method stub
		dao.delete(paper);
	}
	public Paper findById(int paper_id) throws Exception {
		// TODO Auto-generated method stub
		return dao.findById(paper_id);
	}

}
