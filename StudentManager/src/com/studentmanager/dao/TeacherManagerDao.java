package com.studentmanager.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import com.studentmanager.pojo.Paper;
import com.studentmanager.pojo.Teacher;
import com.studentmanager.pojo.TeacherManager;
import com.studentmanager.util.DataBaseHelper;

public class TeacherManagerDao {

	public List findAll() throws Exception {
		String sql = "select * from teachermanager";
		ResultSet rs = DataBaseHelper.executeQuery(sql);
		List teachermanagers = new ArrayList();
			while(rs.next()) {
				int teachermanager_id=rs.getInt("teachermanager_id");
				int TeacherInformation_id=rs.getInt("TeacherInformation_id");
				int paper_id = rs.getInt("paper_id");
				int course_id=rs.getInt("course_id");
				int fee=rs.getInt("fee");
				TeacherManager teachermanager=new TeacherManager();
				teachermanager.setTeachermanager_id(teachermanager_id);
				teachermanager.setTeacherinformation_id(TeacherInformation_id);
				teachermanager.setPaper_id(paper_id);
				teachermanager.setCourse_id(course_id);
				teachermanager.setFee(fee);
				//System.out.println(teachermanager.getMajor_id());
				teachermanagers.add(teachermanager);
				
			}
		return teachermanagers;
		// TODO Auto-generated method stub
	}

	public TeacherManager findById(int teachermanager_id) throws Exception {
		// TODO Auto-generated method stub
		TeacherManager p=new TeacherManager();
		String sql = "select * from teachermanager where teachermanager_id='"+teachermanager_id+"'";
		ResultSet rs = DataBaseHelper.executeQuery(sql);
		//System.out.println(p.getTeachermanager_id()+" "+p.getTeacherinformation_id()+" "+p.getCourse_id());
			if(rs.next()) {
				int teacherinformation_id=rs.getInt("teacherinformation_id");
				int Teachermanager_id=rs.getInt("teachermanager_id");
				int course_id=rs.getInt("course_id");
				int paper_id=rs.getInt("paper_id");
				int fee=rs.getInt("fee");
			    p.setTeacherinformation_id(teacherinformation_id);
			    p.setTeachermanager_id(Teachermanager_id);
			    p.setCourse_id(course_id);
			    p.setFee(fee);
			    p.setPaper_id(paper_id);
			}
		return p;
	}

	public void save(TeacherManager teachermanager) throws Exception {
		// TODO Auto-generated method stub
		String sql="update teachermanager set paper_id='"+teachermanager.getPaper_id()+"',course_id='"+teachermanager.getCourse_id()+"',teacherinformation_id='"+teachermanager.getTeacherinformation_id()+"',fee='"+teachermanager.getFee()+"' where teachermanager_id='"+teachermanager.getTeachermanager_id()+"'";
		DataBaseHelper.executeUpdate(sql);
	}

	public void delete(TeacherManager teachermanager) throws Exception {
		// TODO Auto-generated method stub
		String sql="delete from teachermanager where teachermanager_id='"+teachermanager.getTeachermanager_id()+"'";
		DataBaseHelper.executeUpdate(sql);
	}

	public void add(TeacherManager teachermanager) throws Exception {
		// TODO Auto-generated method stub
		String sql ="insert into teachermanager(paper_id,course_id,teacherinformation_id,fee) values('"+teachermanager.getPaper_id()+"','"+teachermanager.getCourse_id()+"','"+teachermanager.getTeacherinformation_id()+"','"+teachermanager.getFee()+"')";
		DataBaseHelper.executeUpdate(sql);
	}

}
