<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>INSPINIA | Login 2</title>

    <link href="../css/bootstrap.min.css" rel="stylesheet">
    <link href="../font-awesome/css/font-awesome.css" rel="stylesheet">

    <link href="../css/animate.css" rel="stylesheet">
    <link href="../css/style.css" rel="stylesheet">

</head>

<body class="gray-bg">

    <div class="loginColumns animated fadeInDown">
        <div class="row">

            <div class="col-md-6">
                <h2 class="font-bold">欢迎来到SIM后台管理登陆系统</h2>

                <p>
                    这里有最齐全的设备运行信息。
                </p>

                <p>
                这里有最便捷的后勤人员管理信息。
                </p>

                <p>
                  这里有最详细的设备安监监控信息。
                </p>

                <p>
                    <small>你想要的这里全都有</small>
                </p>

            </div>
            <div class="col-md-6">
                <div class="ibox-content">
                    <form class="m-t" role="form" action="checkadminlogin.jsp">
                       <div class="form-group">
                            <input type="text" class="form-control" placeholder="Adminname" name="adminname" required="">
                        </div>
                        <div class="form-group">
                            <input type="email" class="form-control" placeholder="Adminemail" name="adminemail" required="">
                        </div>
                        <div class="form-group">
                            <input type="password" class="form-control" placeholder="Password" name="Password" required="">
                        </div>
                        <button type="submit" class="btn btn-primary block full-width m-b">Login</button>

                        <a href="#">
                            <small>忘记密码？</small>
                        </a>
   
                        <a class="btn btn-sm btn-white btn-block" href="register.jsp">创建账户</a>
                    </form>
                    <p class="m-t">
                        <small>ldu_SoftWare Group 5 LduSoftWare ldu. &copy; 2017</small>
                    </p>
                </div>
            </div>
        </div>
        <hr/>
        <div class="row">
            <div class="col-md-6">
                Copyright ldu_Software Group 5 LduSoftWare ldu.
            </div>
            <div class="col-md-6 text-right">
               <small>© 2017-2018</small>
            </div>
        </div>
    </div>

</body>
<script type="text/javascript">
window.onload=function(){

	alert("您尚未注册或用户名密码错误！");
}</script>
</html>
