package com.studentmanager.action;
import com.studentmanager.pojo.Teacher;
import com.studentmanager.service.TeacherService;

public class TeacherAction {
	public Teacher teacher=new Teacher();
	TeacherService service=new TeacherService();
	public String findById(){
		try {
			teacher=service.findById(teacher.getTeacherinformation_id());
		} catch (Exception e) {
			// TODO Auto-generated catch block
			return "error";
		}
		return "modify";
	}
    public String save(){
    	try {
			service.save(teacher);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			return "error";
		}
    	return"save";
    }
    public String delete(){
    	try {
			service.delete(teacher);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			return "error";
		}
    	return "delete";
    }
    public String add(){
    	try {
			service.add(teacher);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			return "error";
		}
    	return "add";
    }
	
}
