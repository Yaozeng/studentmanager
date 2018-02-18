<%@ page language="java"
	import="java.util.*,com.studentmanager.service.*,com.studentmanager.pojo.*"
	pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<%
   TeacherManagerService service = new TeacherManagerService();
   List<TeacherManager> teachermanagers = service.findAll();
%>
<head>
<meta charset="UTF-8">
<title>四川省高等教育自学考试管理系统</title>
<link rel="stylesheet" type="text/css" href="/StudentManager/css/6.css">
<link rel="stylesheet" type="text/css" href="/StudentManager/css/2.css">
<link rel="stylesheet" type="text/css" href="/StudentManager/css/1.css">

<script src="/StudentManager/js/jQuery.js"></script>
<script type="text/javascript">
		function searchPaper(){
	var mySelect=document.getElementById("selected");
	var index=mySelect.selectedIndex;
	var str=mySelect.options[index].value;
	var str2=document.getElementById("text").value;
window.open("/StudentManager/paper/teacherManagerSearch.jsp?selected="+str+"&& text="+str2+"","_self");
}
	function openwin(){
		window.open ('33.html','newwindow','height=300,width=400,top=300,left=500,toolbar=no,menubar=no,scrollbars=no, resizable=no,titlebar=no, location=0, status=no') }
	</script>

<style>
button {
	margin: 5px 20px;
	padding: 5px;
	width: 60px;
	cursor: pointer;
	color: #000000;
	background-color: #CCCCCC;
}
</style>
</head>

<body>
	<div id="container">
		<h1>教师管理</h1>
		<select id="selected" >
			<option value="teachermanager_id">教师管理编号</option>
			<option value="TeacherInformation_id">教师编号</option>
			<option value="paper_id">样卷编号</option>
			<option value="course_id">课程编号</option>
			<option value="fee">费用</option>
		</select> <input type="text" id="text">
		<button onclick="searchPaper()">搜索</button>
		<div id="hmenu">
			<ul>
				<li class="one"><strong>教师管理编号</strong>
				</li>
				<li class="two"><strong>教师编号</strong>
				</li>
				<li class="three"><strong>样卷编号</strong>
				</li>
				<li class="five"><strong>课程编号</strong>
				</li>
				<li class="six"><strong>费用</strong>
				</li>
				<li class="seven"><strong>操作</strong>
				</li>
			</ul>
		</div>
		<div id="main">
			<div id="left">
				<table>
					<%
              for(TeacherManager teachermanager:teachermanagers){
              //System.out.println(teachermanager.getMajor_id());
           %>
					<tr align="center">
						<td style="width: 140px;"><%=teachermanager.getTeachermanager_id()%></td>
						<td style="width: 100px;"><%=teachermanager.getTeacherinformation_id() %></td>
						<td style="width: 100px;"><%=teachermanager.getPaper_id()%></td>
						<td style="width: 100px;"><%=teachermanager.getCourse_id()%></td>
						<td style="width: 100px;"><%=teachermanager.getFee() %></td>
						<td style="width: 100px;"><a
							href="modTeacherManager.action?teachermanager.teachermanager_id=<%=teachermanager.getTeachermanager_id()%>">修改</a>
							<a
							href="delTeacherManager.action?teachermanager.teachermanager_id=<%=teachermanager.getTeachermanager_id()%>">删除</a>
						</td>
					</tr>
					<%}%>
				</table>
			</div>
			<div id="rmenu">
				<ul>
					<li><a href="/StudentManager/paper/addTeacherManager.jsp">增加</a>
					</li>
					<li><a href="/StudentManager/paper/teacher.jsp">教师信息总览</a>
					</li>
					<li><a href="#">教师管理</a>
					</li>
				</ul>
			</div>
		</div>
</body>
<script type="text/javascript" src="/StudentManager/js/menu.js"></script>
<script>
	function tcolor(){

 $("tr:even").addClass("even");
 $("tr:odd").addClass("odd");
 }  

 $("tr").hover(
  function(){
   
   $(this).addClass("selected");
   
  },function (){

   $(this).removeClass("selected");

  });

$(document).ready( tcolor());
</script>

</html>
