<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>SIM | Login</title>

    <link href="../css/bootstrap.min.css" rel="stylesheet">
    <link href="../font-awesome/css/font-awesome.css" rel="stylesheet">

    <link href="../css/animate.css" rel="stylesheet">
    <link href="../css/style.css" rel="stylesheet">

</head>

<body class="gray-bg">

    <div class="middle-box text-center loginscreen animated fadeInDown">
        <div>
            <div>

                <h1 class="logo-name">SIM</h1>

            </div>
            <h3>安全信息管理系统</h3>
            <p>在这里，你将得到最全的企业设备信息管理和设备能源架构调整方案
              
            </p>
      
            <form class="m-t" role="form" action="checklogin.jsp">
            <div class="form-group">
                    <input type="text" class="form-control" placeholder="员工号..." required="" name="Userid">
                </div>
             <div class="form-group">
                    <input type="text" class="form-control" placeholder="姓名..." required="" name="Username">
                </div>
                <div class="form-group">
                    <input type="email" class="form-control" placeholder="登陆邮箱..." required="" name="Useremail">
                </div>
                <div class="form-group">
                    <input type="password" class="form-control" placeholder="密码..." required="" name="Password">
                </div>
                <button type="submit" class="btn btn-primary block full-width m-b">登陆</button>

                <a href="#"><small>忘记密码？</small></a>
                <p class="text-muted text-center"><small>还没有账户？</small></p>
                <a class="btn btn-sm btn-white btn-block" href="register.jsp">创建账户</a>
            </form>
            <p class="m-t"> <small>鲁东大学 软件工程 Group 5 LduSoftWare ldu. &copy; 2017</small> </p>
        </div>
    </div>

    <!-- Mainly scripts -->
    <script src="js/jquery-2.1.1.js"></script>
    <script src="js/bootstrap.min.js"></script>

</body>

</html>
