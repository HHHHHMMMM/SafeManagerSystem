<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
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

    <title>安全信息管理系统</title>
<link href="../css/bootstrap.min.css" rel="stylesheet">
    <link href="../font-awesome/css/font-awesome.css" rel="stylesheet">
    <link href="../css/animate.css" rel="stylesheet">
    <link href="../css/plugins/summernote/summernote.css" rel="stylesheet">
    <link href="../css/plugins/summernote/summernote-bs3.css" rel="stylesheet">
    <link href="../css/style.css" rel="stylesheet">

<style>
	th {
	text-align: center;
}
</style>

</head>

<body>

    <div id="wrapper">

    <nav class="navbar-default navbar-static-side" role="navigation">
        <div class="sidebar-collapse">
            <ul class="nav metismenu" id="side-menu">
                <li class="nav-header">
                    <div class="dropdown profile-element"> <span>
                            <img alt="image" class="img-circle" src="../img/profile_small.jpg" />
                             </span>
                        <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                           <%   String topusername=(String) session.getAttribute("Username");%> 
                           <span class="clear"> <span class="block m-t-xs"> <strong class="font-bold"><%=topusername%></strong>
                             </span> <span class="text-muted text-xs block">员工 </span> </span> </a>
                        <ul class="dropdown-menu animated fadeInRight m-t-xs">
                         
                            <li><a href="login.html">Logout</a></li>
                        </ul>
                    </div>
                    <div class="logo-element">
                        SIM
                    </div>
                </li>
                 <li>
                 <a href="index.jsp"><i class="fa fa-th-large"></i> <span class="nav-label">首页</span></a>
                </li>
                      <li>
                    <a href="mailbox.html"><i class="fa fa-envelope"></i> <span class="nav-label">企业基础信息库及状态 </span><span class="pull-right label label-danger">Warning</span></a>
                    <ul class="nav nav-second-level collapse">
                   <li><a href="shebeizong.jsp">设备总运行状态</a></li>
                        <li><a href="bianyaqi.jsp">变压器</a></li>
                      <li><a href="gaoyabianyaxiang.jsp">高压变电箱</a></li>
                        <li><a href="shiduchuanganqi.jsp">湿度传感器</a></li>
                    <li><a href="wenduchuanganqi.jsp">温度传感器</a></li>
                     <li><a href="chaofuhe.jsp">超负荷运行设备<span class="pull-right label label-danger">Warning</span></a></li>
                    </ul>
                </li>
                <li>
                    <a href="#"><i class="fa fa-bar-chart-o"></i> <span class="nav-label">设备管理</span><span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level collapse">
                        <li><a href="addshebei.jsp">添加设备</a></li>
                        <li><a href="shanchushebei.jsp">删除设备</a></li>
                        <li><a href="resetshebei.jsp">修改设备状态</a></li>
                    </ul>
                </li>
                 <li>
                 <a href="upload.jsp"><i class="fa fa-diamond"></i> <span class="nav-label">决策分析系统</span></a>
                </li>
                
               
          
        		<li>
                    <a href="daka.jsp"><i class="fa fa-edit"></i> <span class="nav-label">岗位打卡</span><span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level collapse">
                        <li><a href="daka.jsp">签到</a></li>
                        <li><a href="qingjia.jsp">请假</a></li>
                        
                        
                    </ul>
                </li>
                
          
                <li>
                    <a href="../map/map2.jsp"><i class="fa fa-bar-chart-o"></i> <span class="nav-label">作者所在地</span><span class="fa arrow"></span></a>
                   
                </li>
               

        </div>
    </nav>

        <div id="page-wrapper" class="gray-bg">
        <div class="row border-bottom">
        <nav class="navbar navbar-static-top" role="navigation" style="margin-bottom: 0">
        <div class="navbar-header">
            <a class="navbar-minimalize minimalize-styl-2 btn btn-primary " href="#"><i class="fa fa-bars"></i> </a>
            <form role="search" class="navbar-form-custom" action="search_results.html">
                <div class="form-group">
                    <input type="text" placeholder="搜索..." class="form-control" name="top-search" id="top-search">
                </div>
            </form>
        </div>
            <ul class="nav navbar-top-links navbar-right">
                <li>
                    <span class="m-r-sm text-muted welcome-message">欢迎来到安全信息管理系统</span>
                </li>
                <li class="dropdown">
                    <a class="dropdown-toggle count-info" data-toggle="dropdown" href="#">
                        <i class="fa fa-envelope"></i>  <span class="label label-warning"></span>
                    </a>
                    <ul class="dropdown-menu dropdown-messages">
                        <li>
                            <div class="dropdown-messages-box">
                                <a href="#" class="pull-left">
                                    <img alt="image" class="img-circle" src="../img/a7.jpg">
                                </a>
                               
                            </div>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <div class="dropdown-messages-box">
                                <a href="#" class="pull-left">
                                    <img alt="image" class="img-circle" src="../img/a4.jpg">
                                </a>
                                
                            </div>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <div class="dropdown-messages-box">
                                <a href="#" class="pull-left">
                                    <img alt="image" class="img-circle" src="../img/profile.jpg">
                                </a>
                              
                            </div>
                        </li>
                        <li class="divider"></li>
                       
                    </ul>
                </li>
                <li class="dropdown">
                    <a class="dropdown-toggle count-info" data-toggle="dropdown" href="#">
                        <i class="fa fa-bell"></i>  <span class="label label-primary">8</span>
                    </a>
                   
                </li>


                <li>
                    <a href="../userresitger/login.jsp">
                        <i class="fa fa-sign-out"></i> 注销
                    </a>
                </li>
            </ul>

        </nav>
        </div>
           <%
           
           
 	Class.forName("com.mysql.jdbc.Driver");  
    Connection conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/Myjdbc?characterEncoding=UTF-8", "root", "");
    PreparedStatement st=null;
    st=conn.prepareStatement("update staff set qingjia='已请假' where userName=?");
    st.setString(1, topusername);
    
    st.executeUpdate(); 
   
	%>
	<br>
	
		 <%
		 
		 st.close();
		 conn.close();
		 	
		 
		  %>
            <div class="row wrapper border-bottom white-bg page-heading">
                <div class="col-lg-10">
                  <h2 style="text-align: center;">请假申请</h2>
                    
                </div>
                <div class="col-lg-12">
			
        		</div>
        		<div class="wrapper wrapper-content">

            <div class="row">
                <div class="col-lg-12">
                <div class="ibox float-e-margins">
                    <div class="ibox-title">
                        <h5>请假原因申请</h5>
                        <div class="ibox-tools">
                           
                            <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                                <i class="fa fa-wrench"></i>
                            </a>
                            
                            <ul class="dropdown-menu dropdown-user">
                                <li><a href="#"  onclick="fun1()">保存提交</a>
                                </li>
                               
                            </ul>
                           
                        </div>
                    </div>
                   
                    <div class="ibox-content no-padding">
					
                        <div class="summernote" style="display: none;"name="summ"><!-- summernote文字插件 -->
 此处填写请假具体原因、时间及销假时间申请...
                        </div>
                        
                </div>
            </div>
            </div>
            
        
           
                       

          </div>
        </div>
</form>
        <div class="footer">
            <div class="pull-right">
            <jsp:useBean id="time" type="java.io.Serializable" beanName="java.util.Date"></jsp:useBean>
           当前时间： <span><%=time %></span>
            </div>
            <div>
                <strong>Copyright</strong> Group 5 LduSoftWare ldu. &copy; 2017-2018
            </div>
        </div>

<form action="checkreason.jsp" method="get" style="display: none;">
	<input id="doc_post" type ="hidden"  name="doc_topost" value=0 type=hidden>
	<input id="doc_submit" type="submit">
</form>
      <!-- Mainly scripts -->
    <script src="../js/jquery-2.1.1.js"></script>
    <script src="../js/bootstrap.min.js"></script>
    <script src="../js/plugins/metisMenu/jquery.metisMenu.js"></script>
    <script src="../js/plugins/slimscroll/jquery.slimscroll.min.js"></script>

    <!-- Custom and plugin javascript -->
    <script src="../js/inspinia.js"></script>
    <script src="../js/plugins/pace/pace.min.js"></script>

    <!-- SUMMERNOTE -->
    <script src="../js/plugins/summernote/summernote.min.js"></script>

    <script>
        $(document).ready(function(){

       $('.summernote').summernote();//summernote编辑器插件
     	 
       });
       
       function fun1(){
    	 	var sHTML= $('.summernote').code();//获取summernote的内容
    	   document.getElementById("doc_post").value=sHTML;
    		document.getElementById("doc_submit").click();
     
       		//alert(sHTML1);
		//$.get("checkreason.jsp", {name:"220"});
		
		
       }
      
     
      
     
      
     
    </script>


</body>
</html>
