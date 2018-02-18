package com.studentmanager.service;

import java.util.List;

import com.studentmanager.dao.TeacherDao;
import com.studentmanager.pojo.Teacher;

public class TeacherService {
	Teacher teacher=new Teacher();
	TeacherDao dao=new TeacherDao();
	public List findAll() throws Exception{
		return dao.findAll();
	}
	public Teacher findById(int i) throws Exception {
		// TODO Auto-generated method stub
		return dao.findById(i);
	}
	public void save(Teacher teacher) throws Exception{
		dao.save(teacher);
		// TODO Auto-generated method stub
		
	}
	public void delete(Teacher teacher) throws Exception {
		// TODO Auto-generated method stub
		dao.delete(teacher);
	}
	public void add(Teacher teacher) throws Exception {
		// TODO Auto-generated method stub
		dao.add(teacher);
	}

}
