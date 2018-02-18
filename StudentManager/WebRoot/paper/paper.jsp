<%@ page language="java"
	import="java.util.*,com.studentmanager.service.PaperService,com.studentmanager.pojo.*,com.studentmanager.util.*,java.sql.*"
	pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%PaperService service=new PaperService();
List<Paper> papers=service.findAll();
 %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>四川省高等教育自学考试管理系统</title>
<script src="/StudentManager/js/jQuery.js"></script>
<link href="/StudentManager/css/bootstrap.min.css" rel="stylesheet">
<script src="/StudentManager/js/jquery-2.2.1.min.js"></script>
<script src="/StudentManager/js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="/StudentManager/css/3.css">
<link rel="stylesheet" type="text/css" href="/StudentManager/css/2.css">
<link rel="stylesheet" type="text/css" href="/StudentManager/css/1.css">
<script type="text/javascript">
	function searchPaper(){
	var mySelect=document.getElementById("selected");
	var index=mySelect.selectedIndex;
	var str=mySelect.options[index].value;
	var str2=document.getElementById("text").value;
window.open("/StudentManager/paper/paperSearch.jsp?selected="+str+"&&text="+str2,"_self");
}
	</script>
<style>
button {
	padding: 5px;
	width: 55px;
	cursor: pointer;
	color: #000000;
	background-color: #CCCCCC;
	margin-top: 2px;
	margin-left: 10px;
}

#text {
	width: 200px;
	color: #cccccc;
	float: left;
	padding-left: 14px;
	margin-top: 2px;
	margin-left: 10px;
}

div.nav {
	margin-top: 0px;
}
</style>
</head>

<body>
	<div id="container">
		<h1>样卷管理</h1>
		<select id="selected" style="float:left;margin-top:3px;">
			<option value="paper_id">样卷编号</option>
			<option value="Major_id">专业</option>
			<option value="course_id">课程</option>
			<option value="time">时间</option>
		</select>
		<button onclick="searchPaper()">搜索</button>
		<input type="text" id="text" value="输入学号或姓名">
		<div id="hmenu">
			<ul>
				<li class="one"><strong>样卷编号</strong>
				</li>
				<li class="two"><strong>专业编号</strong>
				</li>
				<li class="three"><strong>课程编号</strong>
				</li>
				<li class="four"><strong>命题时间</strong>
				</li>
				<li class="five"><strong>操作</strong>
				</li>
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
						<td style="width: 140px;"><a
							href="editPaperAction.action?paper.paper_id=<%=paper.getPaper_id()%>">修改</a>
							<a
							href="delPaperAction.action?paper.paper_id=<%=paper.getPaper_id()%>">删除</a>
						</td>
					</tr>
					<%}%>

				</table>
			</div>
			<div id="rmenu">
				<ul>
					<li><a href="/StudentManager/paper/addPaper.jsp">增加</a>
					</li>
					<li><a href="#">样卷信息总览</a>
					</li>
					<li><a href="/StudentManager/paper/papermanager.jsp">样卷出入库管理</a>
					</li>
				</ul>
			</div>
		</div>
</body>
<script type="text/javascript" src="js/menu.js"></script>
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