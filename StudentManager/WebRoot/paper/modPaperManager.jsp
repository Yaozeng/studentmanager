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
       alert("样卷编号不能为空");
       return false;
       }
        if(!reg.test(paper)){
        alert("样卷编号为数字");
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
     <p align="center">修改样卷出入库管理</p>
  <hr>
  <form action="papermanagerSave.action"  method="post" onsubmit="return check()">
    <table width="100%" border="1" align="center" style="border: 1px solid blue;border-collapse: collapse;">
           <tr align="center">
               <td>样卷编号:<input id="paper" type="text" name="papermanager.paper_id" value="${papermanager.paper_id}"></td>
               <td>出库时间:<input id="outtime" type="text" name="papermanager.outtime" value="${papermanager.outtime}"></td>
               <td>预计归还时间:<input id="returntime" type="text" name="papermanager.returntime" value="${papermanager.returntime}"></td>
               <td>操作者:<input id="operator" type="text" name="papermanager.operator" value="${papermanager.operator}"></td>
           </tr>
   </table>
   <table align="center" width="100%">
   <td><input type="submit" value="保存"></td>
   </table>
    <input type="hidden" name="papermanager.papermanager_id" value="${papermanager.papermanager_id}">
   </form>
  </body>
</html>
