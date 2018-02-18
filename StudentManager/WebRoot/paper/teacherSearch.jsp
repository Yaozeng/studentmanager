<%@ page language="java"
	import="java.util.*,com.studentmanager.util.*,java.sql.*,com.studentmanager.pojo.*"
	pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%
String str1 = new String(request.getParameter("selected").getBytes("iso-8859-1"), "utf-8"); 
String str2 = new String(request.getParameter("text").getBytes("iso-8859-1"), "utf-8"); 
String sql="select * from teacherinformation where "+str1+"='"+str2+"'";
ResultSet rs=DataBaseHelper.executeQuery(sql);
List <Teacher> teachers=new ArrayList<Teacher>();
while(rs.next()) {
				int teacherinformation_id = rs.getInt("TeacherInformation_id");
				String name = rs.getString("name");
				String gender=rs.getString("gender");
				String tel=rs.getString("tel");
				Teacher teacher=new Teacher();
				teacher.setTeacherinformation_id(teacherinformation_id);
				teacher.setName(name);
				teacher.setGender(gender);
				teacher.setTel(tel);
				teachers.add(teacher);	
				}		
 %>
<html>
<head>
<meta charset="UTF-8">
<title>四川省高等教育自学考试管理系统</title>
<link rel="stylesheet" type="text/css" href="/StudentManager/css/4.css">
<link rel="stylesheet" type="text/css" href="/StudentManager/css/2.css">
<link rel="stylesheet" type="text/css" href="/StudentManager/css/1.css">

<script src="/StudentManager/js/jQuery.js"></script>
<script type="text/javascript">
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
		<div id="hmenu">
			<ul>
				<li class="one"><strong>教师编号</strong></li>
				<li class="two"><strong>教师姓名</strong></li>
				<li class="three"><strong>教师性别</strong></li>
				<li class="four"><strong>联系方式</strong></li>
				<li class="five"><strong>操作</strong></li>
			</ul>
		</div>
		<div id="main">
			<div id="left">
				<table>
					<%
              for(Teacher teacher:teachers){
           %>
					<tr align="center">
						<td style="width: 150px;"><%=teacher.getTeacherinformation_id()%></td>
						<td style="width: 150px;"><%=teacher.getName() %></td>
						<td style="width: 150px;"><%=teacher.getGender()%></td>
						<td style="width: 150px;"><%=teacher.getTel() %></td>
						<td style="width: 150px;"><a
							href="modTeacher.action?teacher.teacherinformation_id=<%=teacher.getTeacherinformation_id()%>">修改</a>
							<a
							href="delTeacher.action?teacher.teacherinformation_id=<%=teacher.getTeacherinformation_id()%>">删除</a>
						</td>
					</tr>
					<%}%>
				</table>
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
