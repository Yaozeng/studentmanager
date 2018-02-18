package com.studentmanager.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import com.studentmanager.pojo.Paper;
import com.studentmanager.pojo.PaperManager;
import com.studentmanager.pojo.User;
import com.studentmanager.util.DataBaseHelper;

public class PaperDao {

	public List findAll() throws Exception {
		String sql = "select * from paper";
		ResultSet rs = DataBaseHelper.executeQuery(sql);
		List papers = new ArrayList();
			while(rs.next()) {
				int paper_id = rs.getInt("paper_id");
				int Major_id = rs.getInt("Major_id");
				int course_id=rs.getInt("course_id");
				Date time=rs.getDate("time");
				Paper paper=new Paper();
				paper.setPaper_id(paper_id);
				paper.setMajor_id(Major_id);
				paper.setCourse_id(course_id);
				paper.setTime(time);
				papers.add(paper);		
			}
		return papers;
	}

	public void save(Paper paper) throws Exception {
		@SuppressWarnings("deprecation")
		String sql="update paper set Major_id='"+paper.getMajor_id()+"',course_id='"+paper.getCourse_id()+"',time='"+new java.sql.Date(paper.getTime().getTime())+"' where paper_id='"+paper.getPaper_id()+"'";
		DataBaseHelper.executeUpdate(sql);
	}

	public void addPaper(Paper paper) throws Exception {
		// TODO Auto-generated method stub
		String sql="insert into paper(Major_id,course_id,time) values('"+paper.getMajor_id()+"','"+paper.getCourse_id()+"','"+new java.sql.Date(paper.getTime().getTime())+"')";
		DataBaseHelper.executeUpdate(sql);
	}

	public void delete(Paper paper) throws Exception {
		// TODO Auto-generated method stub
		 String sql="delete from paper where paper_id='"+paper.getPaper_id()+"'";
		   DataBaseHelper.executeUpdate(sql);
		
	}

	public Paper findById(int paper_id) throws Exception {
		// TODO Auto-generated method stub
		Paper p=new Paper();
		String sql = "select * from paper where paper_id='"+paper_id+"'";
		ResultSet rs = DataBaseHelper.executeQuery(sql);
			if(rs.next()) {
				int Paper_id=rs.getInt("paper_id");
				int Major_id = rs.getInt("Major_id");
				int course_id=rs.getInt("course_id");
				Date time=rs.getDate("time");
				p.setPaper_id(Paper_id);
				p.setMajor_id(Major_id);
				p.setCourse_id(course_id);
				p.setTime(time);
			}
		return p;
	}

}
