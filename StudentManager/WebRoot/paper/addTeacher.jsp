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
function checkname(name){
if(name==""||name==null){
alert("姓名不能为空");
return false;
}
var pattern = /^([u4e00-u9fa5]|[ufe30-uffa0])*$/gi;
if (!pattern.test(name)) return true;
else{
alert("必须为中文");
return false;
}
 
}
function checkgender(gender){
if(gender==""||gender==null){
alert("性别不能为空");
return false;
}
if(gender=="男"||gender=="女"){
return true;
}
else{
alert("请输入男，女");
return false;
}
}
function checktel(tel){

if(tel==""||tel==null){
alert("表单不能为空");
return false;
}
       var reg = new RegExp("^[0-9]*$");
        if(!reg.test(tel)||tel.length!=11){
        alert("电话格式有误");
        return false;
    }
        return true;
}
function check(){
if(checkname($("name").value)&&checkgender($("gender").value)&&checktel($("tel").value)){
return true;
}
return false;
}
</script>
  </head>
  
  <body>
     <p align="center">修改教师管理</p>
  <hr>
  <form action="addTeacher.action"  method="post" onsubmit="return check()">
    <table width="100%" border="1" align="center" style="border: 1px solid blue;border-collapse: collapse;">
           <tr align="center">
               <td>姓名:<input id="name" type="text" name="teacher.name"></td>
               <td>性别:<input id="gender" type="text" name="teacher.gender" ></td>
               <td>联系方式:<input id="tel" type="text" name="teacher.tel" ></td>
           </tr>
   </table>
   <table align="center" width="100%">
   <td><input type="submit" value="保存"></td>
   </table>
   </form>
  </body>
</html>
