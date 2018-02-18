<%@ page language="java" import="java.util.*,com.studentmanager.util.*,java.sql.*,com.studentmanager.pojo.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%String sql="select * from paper where "+request.getParameter("selected")+"='"+request.getParameter("text")+"'";
ResultSet rs=DataBaseHelper.executeQuery(sql);
List <Paper> papers=new ArrayList<Paper>();
while(rs.next()){
int paper_id = rs.getInt("paper_id");
				int Major_id = rs.getInt("Major_id");
				int course_id=rs.getInt("course_id");
				java.sql.Date time=rs.getDate("time");
				Paper paper=new Paper();
				paper.setPaper_id(paper_id);
				paper.setMajor_id(Major_id);
				paper.setCourse_id(course_id);
				paper.setTime(time);
				papers.add(paper);	
}


 %>
<html>
<head>
	<meta charset="UTF-8">
	<title>四川省高等教育自学考试管理系统</title>
	<link rel="stylesheet" type="text/css" href="/StudentManager/css/3.css">
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
		<h1>样卷管理</h1>
		<div id="hmenu">
			<ul>
				<li class="one"><strong>样卷编号</strong></li>
				<li class="two"><strong>专业编号</strong></li>
 				<li class="three"><strong>课程编号</strong></li>
				<li class="four"><strong>命题时间</strong></li>
				<li class="five"><strong>操作</strong></li>
			</ul>
		</div>
		<div id="main">
			<div id="left">
			<table> 
		   <%
              for(Paper paper:papers){
           %>
           <tr align="center">
               <td style="width: 140px;"><%=paper.getPaper_id()%></td>
               <td style="width: 140px;"><%=paper.getMajor_id() %></td>
               <td style="width: 140px;"><%=paper.getCourse_id() %></td>
               <td style="width: 140px;"><%=paper.getTime() %></td>
               <td style="width: 140px;"> <a href="editPaperAction.action?paper.paper_id=<%=paper.getPaper_id()%>">修改</a> <a href="delPaperAction.action?paper.paper_id=<%=paper.getPaper_id()%>">删除</a></td>
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
