<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>四川省高等教育自学考试管理系统</title>
<link href="css/bootstrap.min.css" rel="stylesheet">
<script src="js/jquery-2.2.1.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<style type="text/css">

.MainBgColor{background: PowderBlue;height: 29px;}
.stuidxct{ margin:10px auto; width:970px; height:400px; background:#fff; border:1px solid #999; position: relative;top: 20px;}
.stuidxctl{ float:left; height:400px; border-right:1px solid #999; overflow-y: auto;width: 568px;}
.stuidxctr{ float:right; margin-left:0px; width:370px; height:400px;margin-top: 6px;}
.stuidxtb{
	border: #EFEFEF 3px dashed;
	border-top: 0;

}
div.slogan p{
	margin-left: 26%;
	margin-top: 3%;
	font-size: 30px;
	font-family: "宋体";
	font-weight: bold;
}
.nav-tabs{
	border-bottom: none;
}
.nav-tabs li.active a{
	background-color: DarkCyan;
}
ul li.active a{
	color:white;
	background-color: DarkCyan;
	font-size:15px
}
a.navigation{
	color:black;
}
div.nav{
	float: right;
}
div.start{
	background-color: SteelBlue;
	width: auto;
	height: 40px;
	float: none;
	margin-top: 18px;
}
div.fin{
	position: relative;
	top: 30px;
}
div.stuidxctr div ul li{
	line-height: 27px;
	float: left;
	margin-left: -23px;
}
</style>
</head>

<body>
<form name="form1" id="form1" method="post">

<div class="stuidxbd">
<table class="stuidxtb" cellspacing="0" cellpadding="0" align="center" border="0">
<tr><td class="MainBgColor">
<div class="slogan">
<p>四川省高等教育自学考试管理系统</p>
</div>

<div class="start">
	 <div class="nav">
    <ul class="nav nav-tabs">
      <li><a class="navigation" href="#">首页</a></li>

      <li class="dropdown">
      <a class="navigation" href="#" class="dropdown-toggle" data-toggle="dropdown">计划管理<span class="caret"></span></a>
      <ul class="dropdown-menu">
        <li><a href="#" >专业管理</a></li>
        <li><a href="#" >考试计划管理</a></li>
      </ul>
      </li>

      <li class="dropdown">
      <a class="navigation" href="#"  class="dropdown-toggle" data-toggle="dropdown">命题管理<span class="caret"></span></a>
      <ul class="dropdown-menu">
        <li><a href="/StudentManager/paper/teacher.jsp" >命题课程管理</a></li>
        <li><a href="/StudentManager/paper/paper.jsp" >样卷管理</a></li>
      </ul>
      </li>

      <li><a class="navigation" href="#" >教材管理</a></li>
      <li><a class="navigation" href="#" >课程管理</a></li>
    </ul>
    </div>
</div>
   
    <div class="stuidxct">

<div class="stuidxctr">
	<p style="font-size:19px;"><strong>消息·公告</strong></p>
  	<table border="0" cellpadding="0" cellspacing="0" style="width:360px;height:3px;background-Color: Gainsboro;">
  <tr><td>
</td></tr></table>
 <div>
<ul> 
   <li><a href="#" style="font-size: 14px;">关于延长2016年上半年广东省自学考试前置学历信息登记时间的公告[2016.05.23]【 新 】</a></li>
   <li><a href="#" style="font-size: 14px;">关于前置学历登记信息情况的说明[2016.04.22]【 新 】</a></li>
   <li><a href="#" style="font-size: 14px;">关于延长2016年4月我省高等教育自学考试报名报考时间的通知[2016.01.19]【 新 】</a></li>
   <li><a href="#" style="font-size: 14px;">关于2016年实行电子转考的公告[2015.12.23]</a></li>
   <li><a href="#" style="font-size: 14px;">关于停考我省高等教育自学考试广播电视新闻专业（独立本科段）的补充通知[2015.04.21]</a></li>
 </ul>
 </div>
</div>

    	<div class="stuidxctl">
        	<div style="width:545px; height:230px;">
         
                <div>
                <p style="font-size:16px; color:black; font-weight:bold; text-align:center; font-size:19px;font-family:'微软雅黑';margin: 5px 0;">管理须知</p>
                </div>

                <div>
                	<ol style="font-size:16px;text-align:left;">
	<li>
		高等教育自学考试四川省信息管理系统是专为四川省自考管理员提供自考相关信息查询功能、删除功能、插入功能和更新功能等的信息系统。
	</li>
	<li>
		<span><strong>2016年04</strong></span>
		<span><strong>月自学考试成绩已公布，请管理员及时上网录入考试结果!</strong></span>
		<span><strong>成绩修正需持考生身份证、准考证以及手写成绩修正申请书到参考区县考试机构提出申请，本次成绩修正申请截止日期为2016年5月16日17:30。</strong></span> 
	</li>

	<li>
		<span><strong>2016年10月自学考试网上信息审核时间为：2016年08月25日9点－2016年09月15日15点！</strong></span> 
	</li>

	<li>
		<span style="color:#e53333;"><strong>非相关授权人员，请勿随意进入该网站并进行操作，否则将采取相关法律措施处理，严惩不贷！</strong></span>
	</li>
</ol>	 
</div>                
</div>
</div>
</div>  	            
</div>
</div>
    <div class="fin"><table cellspacing="0" cellpadding="0" width="990" align="center" border="0">
	<tr>
		<td valign="middle" align="center" height="20" style="font: 12px Tahoma,宋体; color: #005982; " class="MainBgColor">四川省教育考试院 &nbsp;&nbsp;&nbsp;&nbsp;支持IE9以上浏览器、火狐浏览器或者Chrome浏览器，分辨率1024*768以上</td>
	</tr>
    <tr>
		<td valign="middle" align="center" height="20" style="font: 12px Tahoma,宋体; color: #005982;" class="MainBgColor">
       <a target="_blank" style="color:#005982; font-weight: bold;" href="#">>>常见问题<<</a>
       &emsp;&emsp;|&emsp;&emsp; <a target="_blank" style="color:#005982; font-weight: bold;" href="#">>>咨询电话<<</a>
       &emsp;&emsp;|&emsp;&emsp; <a target="_blank" style="color:#005982; font-weight: bold;" href="#">>>用户手册<<</a>
        </td>
	</tr> 
</table></div>
</td>
</tr>
</table>
</div>
</form>
</body>
</html>	
