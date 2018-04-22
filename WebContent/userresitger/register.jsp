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

    <title>INSPINIA | Register</title>

    <link href="../css/bootstrap.min.css" rel="stylesheet">
    <link href="../font-awesome/css/font-awesome.css" rel="stylesheet">
    <link href="../css/plugins/iCheck/custom.css" rel="stylesheet">
    <link href="../css/animate.css" rel="stylesheet">
    <link href="../css/style.css" rel="stylesheet">

</head>

<body class="gray-bg">

    <div class="middle-box text-center loginscreen   animated fadeInDown">
        <div>
            <div>

                <h1 class="logo-name">SIM</h1>

            </div>
            <h3>注册你的SIM</h3>
            
            <form class="m-t" role="form" action="checkreister.jsp">
             <div class="form-group">
                    <input type="text" class="form-control" placeholder="AdminID" required="" name="AdminID">
                </div>
                <div class="form-group">
                    <input type="text" class="form-control" placeholder="AdminName" required="" name="AdminName">
                </div>
                <div class="form-group">
                    <input type="email" class="form-control" placeholder="AdminEmail" required="" name = "AdminEmail">
                </div>
                <div class="form-group">
                    <input type="password" class="form-control" placeholder="AdminPassword" required="" name="AdminPassword">
                </div>
                <div class="form-group">
                        <div class="checkbox i-checks"><label> <input type="checkbox"><i></i> 同意条款 </label></div>
                </div>
                <button type="submit" class="btn btn-primary block full-width m-b">注册</button>

                <p class="text-muted text-center"><small>已经有账户？</small></p>
                <a class="btn btn-sm btn-white btn-block" href="login.jsp">登陆</a>
            </form>
            <p class="m-t"> <small>鲁东大学软件工程Group 5 LduSoftWare ldu. &copy; 2017</small> </p>
        </div>
    </div>

    <!-- Mainly scripts -->
    <script src="js/jquery-2.1.1.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <!-- iCheck -->
    <script src="js/plugins/iCheck/icheck.min.js"></script>
    <script>
        $(document).ready(function(){
            $('.i-checks').iCheck({
                checkboxClass: 'icheckbox_square-green',
                radioClass: 'iradio_square-green',
            });
        });
    </script>
</body>

</html>
