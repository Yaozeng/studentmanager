<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
<script>
function $(id){
return document.getElementById(id);
}
function checkpaper(paper){
          var reg = new RegExp("^[0-9]*$");
       if(paper==""||paper==null){
       alert("表单不能为空");
       return false;
       }
        if(!reg.test(paper)){
        return false;
    }
        return true;
}
function checkOperator(operator){
if(operator==""||operator==null){
alert("姓名不能为空");
return false;
}
var pattern = /^([u4e00-u9fa5]|[ufe30-uffa0])*$/gi;
if (!pattern.test(operator)) return true;
else{
alert("必须为中文");
return false;
}
}
function check(){
if(checkpaper($("paper").value)&&checkOperator($("operator").value)){
return true;
}
else
{
return false;
}
}
</script>
  </head>
  
  <body>
    <p align="center">增加样卷管理</p>
  <hr>
  <form action="papermanagerAdd.action"  method="post">
    <table width="80%" border="1" align="center" style="border: 1px solid blue;border-collapse: collapse;">
           <tr align="center">
               <td>专业编号:<input id="paper" type="text" name="papermanager.paper_id" ></td>
               <td>出库时间:<input id="outtime" type="text" name="papermanager.outtime"></td>
               <td>预计归还时间:<input id="returntime" type="text" name="papermanager.returntime"></td>
               <td>操作员:<input id="operator" type="text" name="papermanager.operator"></td>
           </tr>
   </table>
   <table align="center" width="80%">
   <td><input type="submit" value="添加"></td>
   </table>
   </form>
  </body>
</html>
