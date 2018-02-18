package com.studentmanager.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import com.studentmanager.pojo.PaperManager;
import com.studentmanager.util.DataBaseHelper;

public class PapermanagerDao {

	public List findAll() throws Exception {
		String sql = "select * from papermanager";
		ResultSet rs = DataBaseHelper.executeQuery(sql);
		List papermanagers = new ArrayList();
			while(rs.next()) {
				int paper_id = rs.getInt("paper_id");
				int papermanager_id = rs.getInt("papermanager_id");
				String operator=rs.getString("operator");
				Date outtime=rs.getDate("outtime");
				Date returntime=rs.getDate("returntime");
				PaperManager papermanager=new PaperManager();
				papermanager.setPaper_id(paper_id);
				papermanager.setPapermanager_id(papermanager_id);
				papermanager.setOperator(operator);
				papermanager.setOuttime(outtime);
				papermanager.setReturntime(returntime);
				papermanagers.add(papermanager);
				
			}
		return papermanagers;
	}

	public void save(PaperManager papermanager) throws Exception {
		String sql="update papermanager set paper_id='"+papermanager.getPaper_id()+"',outtime='"+new java.sql.Date(papermanager.getOuttime().getTime())+"',returntime='"+new java.sql.Date(papermanager.getReturntime().getTime())+"',operator='"+papermanager.getOperator()+"'";
		DataBaseHelper.executeUpdate(sql);
	}

	public void addPapermanager(PaperManager papermanager) throws Exception {
		String sql="insert into papermanager(paper_id,outtime,returntime,operator) values('"+papermanager.getPaper_id()+"','"+new java.sql.Date(papermanager.getOuttime().getTime())+"','"+new java.sql.Date(papermanager.getReturntime().getTime())+"','"+papermanager.getOperator()+"')";
		DataBaseHelper.executeUpdate(sql);
	}

	public void delete(PaperManager papermanager) throws Exception {
		// TODO Auto-generated method stub
		String sql="delete from papermanager where papermanager_id='"+papermanager.getPapermanager_id()+"'";
		DataBaseHelper.executeUpdate(sql);
		
	}

	public PaperManager findById(int papermanager) throws Exception {
		PaperManager p=new PaperManager();
		String sql = "select * from papermanager where papermanager_id='"+papermanager+"'";
		ResultSet rs = DataBaseHelper.executeQuery(sql);
			if(rs.next()) {
				int papermanager_id = rs.getInt("papermanager_id");
				int paper_id=rs.getInt("paper_id");
				Date outtime=rs.getDate("outtime");
				Date returntime=rs.getDate("returntime");
				String operator=rs.getString("operator");
				p.setPapermanager_id(papermanager_id);
				p.setPaper_id(paper_id);
				p.setOuttime(outtime);
				p.setReturntime(returntime);
				p.setOperator(operator);
			}
		return p;
		// TODO Auto-generated method stub
		
	}

}
