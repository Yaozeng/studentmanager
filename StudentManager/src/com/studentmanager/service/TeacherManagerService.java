package com.studentmanager.service;

import java.util.List;

import com.studentmanager.dao.TeacherManagerDao;
import com.studentmanager.pojo.TeacherManager;

public class TeacherManagerService {
	TeacherManagerDao dao= new TeacherManagerDao();
	public List findAll() throws Exception{
		return dao.findAll();
	}
	public TeacherManager findById(int teachermanager_id) throws Exception {
		// TODO Auto-generated method stub
		return dao.findById(teachermanager_id);
	}
	public void save(TeacherManager teachermanager) throws Exception {
		// TODO Auto-generated method stub
		dao.save(teachermanager);
	}
	public void delete(TeacherManager teachermanager) throws Exception {
		// TODO Auto-generated method stub
		dao.delete(teachermanager);
	}
	public void add(TeacherManager teachermanager) throws Exception {
		// TODO Auto-generated method stub
		dao.add(teachermanager);
	}
}
