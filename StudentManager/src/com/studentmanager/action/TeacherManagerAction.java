package com.studentmanager.action;
import com.studentmanager.pojo.TeacherManager;
import com.studentmanager.service.TeacherManagerService;

public class TeacherManagerAction {
	public TeacherManager teachermanager=new TeacherManager();
	TeacherManagerService service=new TeacherManagerService();
	public String findById() {
		try {
			teachermanager=service.findById(teachermanager.getTeachermanager_id());
		} catch (Exception e) {
			// TODO Auto-generated catch block
		return "error";
		}
		return "modify";
	}
    public String save() {
    	try {
			service.save(teachermanager);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			return "error";
		}
    	return"save";
    }
    public String delete(){
    	try {
			service.delete(teachermanager);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			return "error";
		}
    	return "delete";
    }
    public String add(){
    	try {
			service.add(teachermanager);
		} catch (Exception e) {
			return "error";
		}
    	return "add";
    }
	
}
