package com.studentmanager.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import com.studentmanager.pojo.Paper;
import com.studentmanager.pojo.Teacher;
import com.studentmanager.util.DataBaseHelper;

public class TeacherDao {

	public List findAll() throws Exception {
		// TODO Auto-generated method stub
		String sql = "select * from teacherinformation";
		ResultSet rs = DataBaseHelper.executeQuery(sql);
		List teachers = new ArrayList();
			while(rs.next()) {
				int teacherinformation_id = rs.getInt("TeacherInformation_id");
				String name = rs.getString("name");
				String gender=rs.getString("gender");
				String tel=rs.getString("tel");
				Teacher teacher=new Teacher();
				teacher.setTeacherinformation_id(teacherinformation_id);
				teacher.setName(name);
				teacher.setGender(gender);
				teacher.setTel(tel);
				teachers.add(teacher);
				
			}
		return teachers;
	}

	public Teacher findById(int i) throws Exception {
		Teacher p=new Teacher();
		String sql = "select * from teacherinformation where teacherinformation_id='"+i+"'";
		ResultSet rs = DataBaseHelper.executeQuery(sql);
			if(rs.next()) {
				int teacherinformation_id=rs.getInt("teacherinformation_id");
				String gender=rs.getString("gender");
				String name=rs.getString("name");
				String tel=rs.getString("tel");
			    p.setTeacherinformation_id(teacherinformation_id);
			    p.setGender(gender);
			    p.setName(name);
			    p.setTel(tel);
			}
		return p;
	}

	public void save(Teacher teacher) throws Exception {
		// TODO Auto-generated method stub
		String sql="update teacherinformation set name='"+teacher.getName()+"',gender='"+teacher.getGender()+"',tel='"+teacher.getTel()+"' where teacherinformation_id='"+teacher.getTeacherinformation_id()+"'";
		DataBaseHelper.executeUpdate(sql);
	}

	public void delete(Teacher teacher) throws Exception {
		// TODO Auto-generated method stub
		 String sql="delete from teacherinformation where teacherinformation_id='"+teacher.getTeacherinformation_id()+"'";
		   DataBaseHelper.executeUpdate(sql);
	}

	public void add(Teacher teacher) throws Exception {
		// TODO Auto-generated method stub
		String sql="insert into teacherinformation(teacherinformation_id,gender,name,tel) values('"+teacher.getTeacherinformation_id()+"','"+teacher.getGender()+"','"+teacher.getName()+"','"+teacher.getTel()+"')";
		DataBaseHelper.executeUpdate(sql);
	}

}
