<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" errorPage="/StudentManager/exceptionError.jsp"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
     <link rel="stylesheet" href="/StudentManager/css/7.css">
     <script language=javascript>
     function $(id){
     return document.getElementById(id);
     }
     function onlyNum(num){
       var reg = new RegExp("^[0-9]*$");
       if(num==""||num==null){
       alert("表单不能为空");
       return false;
       }
        if(!reg.test(num)){
        return false;
    }
        return true;
     }
     function check(){
     if(onlyNum($("teacher").value)&&onlyNum($("paper").value)&&onlyNum($("course").value)&&onlyNum($("fee").value)){
     return true;
     }
     {
     alert("输入有误,只能输入数字");
     return false;
     }
     }
     </script>
  </head>
  
  <body>
      <p class="title" align="center">修改教师管理</p>
  <hr>
  <form action="teachermanagerSave.action"  method="post" onsubmit="return check()">
    <table class="center" width="100%" border="1" align="center" style="border: 1px solid blue;border-collapse: collapse;">
           <tr align="center">
               <td>教师编号:<input  id="teacher" type="text" name="teachermanager.teacherinformation_id" value="${teachermanager.teacherinformation_id}"></td>
               <td>样卷编号:<input  id="paper" type="text" name="teachermanager.paper_id" value="${teachermanager.paper_id}"></td>
               <td>课程编号:<input  id="course" type="text" name="teachermanager.course_id" value="${teachermanager.course_id}"></td>
               <td>费用:<input  id="fee" type="text" name="teachermanager.fee" value="${teachermanager.fee}"></td>
           </tr>
   </table>
   <table align="center" width="100%">
   <td><input class="submit" type="submit" value="保存"></td>
   </table>
    <input type="hidden" name="teachermanager.teachermanager_id" value="${teachermanager.teachermanager_id}">
   </form>
  </body>
</html>
