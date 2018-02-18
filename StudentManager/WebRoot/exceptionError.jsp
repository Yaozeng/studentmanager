<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" isErrorPage="true"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<script type="text/javascript">
 function GoPre() {
            window.location.href = document.referrer; //使用document.referrer
 }
</script>
</head>
  <body>
  <div  style="margin: 0 auto;text-align:center;">
    <h1>数据库操作异常</h1>
    <img alt="出错了" src="/StudentManager/image/error.jpg" onclick="GoPre()">
    <h6>点击图片返回</h6>
    </div>
  </body>
</html>
