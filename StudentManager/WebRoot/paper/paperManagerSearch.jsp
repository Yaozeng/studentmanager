<%@ page language="java"
	import="java.util.*,com.studentmanager.util.*,java.sql.*,com.studentmanager.pojo.*"
	pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%String sql="select * from papermanager where "+request.getParameter("selected")+"='"+request.getParameter("text")+"'";
ResultSet rs=DataBaseHelper.executeQuery(sql);
List <PaperManager> papermanagers=new ArrayList<PaperManager>();
while(rs.next()){
int paper_id = rs.getInt("paper_id");
				int papermanager_id = rs.getInt("papermanager_id");
				String operator=rs.getString("operator");
				java.sql.Date outtime=rs.getDate("outtime");
				java.sql.Date returntime=rs.getDate("returntime");
				PaperManager papermanager=new PaperManager();
				papermanager.setPaper_id(paper_id);
				papermanager.setPapermanager_id(papermanager_id);
				papermanager.setOperator(operator);
				papermanager.setOuttime(outtime);
				papermanager.setReturntime(returntime);
				papermanagers.add(papermanager);
				
}


 %>
<html>
<head>
<meta charset="UTF-8">
<title>样卷出入库管理</title>
<link rel="stylesheet" type="text/css" href="/StudentManager/css/5.css">
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
				<li class="one"><strong>样卷管理编号</strong>
				</li>
				<li class="two"><strong>样卷编号</strong>
				</li>
				<li class="three"><strong>出库时间</strong>
				</li>
				<li class="four"><strong>预计归还时间</strong>
				</li>
				<li class="five"><strong>操作员</strong>
				</li>
				<li class="six"><strong>操作</strong>
				</li>
			</ul>
		</div>
		<div id="main">
			<div id="left">
				<table>
					<%
              for(PaperManager papermanager:papermanagers){
           %>
					<tr align="center">
						<td style="width: 150px;"><%=papermanager.getPapermanager_id()%></td>
						<td style="width: 150px;"><%=papermanager.getPaper_id() %></td>
						<td style="width: 150px;"><%=papermanager.getOuttime() %></td>
						<td style="width: 150px;"><%=papermanager.getReturntime() %></td>
						<td style="width: 150px;"><%=papermanager.getOperator() %></td>
						<td style="width: 160px;"><a
							href="modPaperManagerAction.action?papermanager.papermanager_id=<%=papermanager.getPapermanager_id()%>">修改</a>
							<a
							href="delPaperManagerAction.action?papermanager.papermanager_id=<%=papermanager.getPapermanager_id()%>">删除</a>
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
