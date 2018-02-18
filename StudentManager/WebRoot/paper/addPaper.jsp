<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
<script type="text/javascript">
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
     if(onlyNum($("major").value)&&onlyNum($("course").value)){
     return true;
     }
     else{
     alert("请输入数字");
     return false;
     }
     }
</script>
  </head>
  
  <body>
    <p align="center">增加样卷</p>
  <hr>
  <form action="paperAdd.action"  method="post" onsubmit="return check()">
    <table width="80%" border="1" align="center" style="border: 1px solid blue;border-collapse: collapse;">
           <tr align="center">
               <td>专业编号:<input id="major" type="text" name="paper.major_id" ></td>
               <td>课程编号:<input id="course" type="text" name="paper.course_id"></td>
               <td>命题时间:<input id="time" type="text" name="paper.time"></td>
           </tr>
   </table>
   <table align="center" width="80%">
   <td><input type="submit" value="添加"></td>
   </table>
   </form>
  </body>
</html>
