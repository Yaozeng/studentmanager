package com.studentmanager.pojo;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class PaperManager {
	private int papermanager_id;
	private int paper_id;
	private Date outtime;
	private Date returntime;
	private String operator;
	public int getPapermanager_id() {
		return papermanager_id;
	}
	public void setPapermanager_id(int papermanager_id) {
		this.papermanager_id = papermanager_id;
	}
	public int getPaper_id() {
		return paper_id;
	}
	public void setPaper_id(int paper_id) {
		this.paper_id = paper_id;
	}
	public Date getOuttime() {
		return outtime;
	}
	public void setOuttime(Date outtime) {
		this.outtime = outtime;
	}
	public void setOuttime(String s) {
		SimpleDateFormat sdf=new SimpleDateFormat("yyyy-mm-dd");
		Date date;
		try {
			date = sdf.parse(s);
			this.outtime=date;
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	public Date getReturntime() {
		return returntime;
	}
	public void setReturntime(Date returntime) {
		this.returntime = returntime;
	}
	public void setReturntime(String s) {
		SimpleDateFormat sdf=new SimpleDateFormat("yyyy-mm-dd");
		Date date;
		try {
			date = sdf.parse(s);
			this.returntime=date;
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	public String getOperator() {
		return operator;
	}
	public void setOperator(String operator) {
		this.operator = operator;
	}
	

}
