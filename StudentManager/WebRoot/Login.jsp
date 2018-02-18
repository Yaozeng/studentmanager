<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML>
<html>
<head>
<meta http-equiv="Content-Type"content="text/html;charset=utf-8">
<title>四川省高等教育自学考试省考管理系统</title>
  <style type="text/css">
body{ background-color:PowderBlue; width:100%; height:auto;}
 *{ padding:0; margin:0;}

 .container{ width:600px; margin:0 auto;text-align:center;}

 .con{background-image: url(/StudentManager/image/1.jpg);  no-repeat 0 0; width:540px; height:334px;position: absolute;top: 25%;left: 30%; /*margin:176px 30px 50px 30px;*/ border-radius: 10px;}
.title{font-family: "交通标志专用字体"; font-size:28px;  border-bottom:2px solid #001869;text-align: center; padding: 30px 0 5px 0;}
.login2{  padding-top:30px; width:440px; margin:0 50px; text-align:center; height:auto;}
.login-box {
	width:400px;
	height:32px;
	line-height:32px; margin:30px auto;
	
}
.login-box label {
	font-size:16px;
	font-family:"微软雅黑";
	height:32px;
	padding-right:20px;line-height:32px;
	float:left; color:#0b1c3e;
	
}
.login-box input {
	height:32px;
	line-height:32px;
	font-size:16px;
	width:300px;
	float:right;
}
.loginFormBtn { margin-left:160px;

}
.btnLogin {
	background:MediumTurquoise;
	width:86px;
	height:38px;
	border:none;
	font-size:16px;
	color:#fff;
	 float:left;
	font-weight:bold;
	margin-left:10px;
}
div.center_left{
  height: 50px;
  width: 408px;
  background-color: SteelBlue;
  position: absolute;
  top: 45%;
}
div.center_right{
  height: 50px;
  width: 420px;
  background-color: SteelBlue;
  position: absolute;
  top: 45%;
  left: 69%;
}

 </style>
            <script type="text/javascript" language="javascript">
          
    String.prototype.trim = function() {
        return this.replace(/(^\s*)|(\s*$)/g, "");
    }
    function chk() {
        var txtAccount = document.getElementById('txtName').value.trim();
        var txtPwd = document.getElementById('txtPwd').value.trim();

        if (txtAccount == '') {
            alert('请填写登录账号！');
            return false
        }
        if (txtPwd == '') {
            alert('请填写登录密码！');
            return false
        }

        return true;
    }
    
    </script>
</head>
<body>
  <form name="form1" method="post" action="Login.action" id="form1">
    <div class="center_left"></div>
    <div class="center_right"></div>
  <div class="container">
    <div class="con">
      <div class="login">
        <div class="title">四川省高等教育自学考试管理系统</div>
      <div class="login2">

      <div class="login-box">
        <label>登录账号:</label>
        <input name="user.username" type="text" maxlength="30" id="txtName" class="shuru" />
      </div>

      <div class="login-box">
        <label>登录密码:</label>
        <input name="user.pwd" type="password" maxlength="30" id="txtPwd" class="shuru" />
      </div>

      <div class="loginFormBtn">
       <input type="submit" name="btnLogin" value="登录" onclick="return chk();" id="btnLogin" class="btnLogin" />
       <input type="reset" id="btnb"  value="重置"  class="btnLogin" />
      </div>
      </div>
      </div>
    </div>
  </div>
</form>
</body>
</html>