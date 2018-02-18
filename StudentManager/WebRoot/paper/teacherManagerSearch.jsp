<%@ page language="java"
	import="java.util.*,com.studentmanager.util.*,java.sql.*,com.studentmanager.pojo.*"
	pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<%String sql="select * from teachermanager where "+request.getParameter("selected")+"='"+request.getParameter("text")。value+"'";
ResultSet rs=DataBaseHelper.executeQuery(sql);
List <TeacherManager> teachermanagers=new ArrayList<TeacherManager>();
while(rs.next()) {
				int teachermanager_id=rs.getInt("teachermanager_id");
				int TeacherInformation_id=rs.getInt("TeacherInformation_id");
				int paper_id = rs.getInt("paper_id");
				int course_id=rs.getInt("course_id");
				int fee=rs.getInt("fee");
				TeacherManager teachermanager=new TeacherManager();
				teachermanager.setTeachermanager_id(teachermanager_id);
				teachermanager.setTeacherinformation_id(TeacherInformation_id);
				teachermanager.setPaper_id(paper_id);
				teachermanager.setCourse_id(course_id);
				teachermanager.setFee(fee);
				//System.out.println(teachermanager.getMajor_id());
				teachermanagers.add(teachermanager);
				}
				
%>
<html>
<head>
<meta charset="UTF-8">
<title>四川省高等教育自学考试管理系统</title>
<link rel="stylesheet" type="text/css" href="/StudentManager/css/6.css">
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
				<li class="one"><strong>教师管理编号</strong></li>
				<li class="two"><strong>教师编号</strong></li>
				<li class="three"><strong>样卷编号</strong></li>
				<li class="five"><strong>课程编号</strong></li>
				<li class="six"><strong>费用</strong></li>
				<li class="seven"><strong>操作</strong></li>
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
