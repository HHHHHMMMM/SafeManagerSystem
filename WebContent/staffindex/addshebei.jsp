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

    <!-- Toastr style -->
    <link href="../css/plugins/toastr/toastr.min.css" rel="stylesheet">

    <link href="../css/animate.css" rel="stylesheet">
    <link href="../css/style.css" rel="stylesheet">



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
                    <a href="#"><i class="fa fa-edit"></i> <span class="nav-label">岗位打卡</span><span class="fa arrow"></span></a>
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
            <div class="row wrapper border-bottom white-bg page-heading">
                <div class="col-lg-10">
                  <h2 style="text-align: center;">添加设备</h2>
                    
                </div>
                <div class="col-lg-12">
<div class="row">
                <div class="col-lg-12">
                    <div class="ibox float-e-margins">
                        <div class="ibox-title">
                            <h5>新增设备 <small>包括设备的编号、名称、型号、产地公司、出厂日期、工作环境、工作状态、成本价格</small></h5>
                            
                        </div>
                        <div class="ibox-content">
                            <form method="get" class="form-horizontal" action="checkaddshebei.jsp">
                                <div class="form-group"><label class="col-sm-2 control-label">设备编号</label>

                                    <div class="col-sm-10"><input name="shebeibianhao" type="text" class="form-control" ></div>
                                </div>
                                <div class="hr-line-dashed"></div>
                                <div class="form-group"><label class="col-sm-2 control-label">设备名称</label>
                                    <div class="col-sm-10"><input name="shebeimingcheng" type="text" class="form-control"> 
                                    </div>
                                </div>
                                <div class="hr-line-dashed"></div>
                                <div class="form-group"><label class="col-sm-2 control-label">设备型号</label>

                                    <div class="col-sm-10"><input type="text" class="form-control" name="shebeixinghao"></div>
                                </div>
                                <div class="hr-line-dashed"></div>
                                <div class="form-group"><label class="col-sm-2 control-label">设备产地</label>

                                    <div class="col-sm-10"><input type="text" class="form-control" name="shebeichandi"></div>
                                </div>
                                <div class="hr-line-dashed"></div>
                                  <div class="form-group"><label class="col-sm-2 control-label">出厂日期</label>

                                    <div class="col-sm-10"><input type="text" class="form-control" name="chuchangriqi">
                                    <span class="help-block m-b-none">填入格式务必为：xxxx-xx-xx,例如：1997-04-11</span>
                                    </div>
                                </div>
                                <div class="hr-line-dashed"></div>
                                  <div class="form-group"><label class="col-sm-2 control-label">工作环境</label>

                                    <div class="col-sm-10"><input type="text" class="form-control" name="gongzuohuanjing"></div>
                                </div>
                                <div class="hr-line-dashed"></div>
                                  <div class="form-group"><label class="col-sm-2 control-label">工作状态</label>

                                    <div class="col-sm-10"><input type="text" class="form-control" name="gongzuozhuangtai"></div>
                                </div>
                                <div class="hr-line-dashed"></div>
                                  <div class="form-group"><label class="col-sm-2 control-label">成本价格</label>

                                    <div class="col-sm-10"><input type="text" class="form-control" name="chengbenjiage"></div>
                                </div>
                                <div class="hr-line-dashed"></div>
                                <div class="form-group"><label class="col-lg-2 control-label">固定资产所属公司名</label>

                                    <div class="col-lg-10"><input type="text" disabled="" placeholder="鲁大软件学院Group 5 LduSoftWare ldu." class="form-control"></div>
                                </div>
                                <div class="hr-line-dashed"></div>
                                <div class="form-group"><label class="col-lg-2 control-label">公司地址</label>

                                    <div class="col-lg-10"><p class="form-control-static">山东省烟台市芝罘区红旗中路186号</p></div>
                               
                                <a href="checkaddshebei.jsp" class="pull-right" onclick="fun1()"><button type="submit" class="btn btn-danger ">一键增加</button></a> 
                                </div>
                            </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        <div class="footer">
            <div class="pull-right">
            <jsp:useBean id="time" type="java.io.Serializable" beanName="java.util.Date"></jsp:useBean>
           当前时间： <span><%=time %></span>
            </div>
            <div>
                <strong>Copyright</strong> Group 5 LduSoftWare ldu. &copy; 2017-2018
            </div>
        </div>

        </div>
        </div>



    <!-- Mainly scripts -->
    <script src="../js/jquery-2.1.1.js"></script>
    <script src="..js/bootstrap.min.js"></script>
    <script src="../js/plugins/metisMenu/jquery.metisMenu.js"></script>
    <script src="../js/plugins/slimscroll/jquery.slimscroll.min.js"></script>

    <script src="js/bootstrap.min.js"></script>
    <script src="js/plugins/metisMenu/jquery.metisMenu.js"></script>
    <script src="js/plugins/slimscroll/jquery.slimscroll.min.js"></script>

  

    <!-- Custom and plugin javascript -->
    <script src="../js/inspinia.js"></script>
    <script src="../js/plugins/pace/pace.min.js"></script>
    <script src="../js/plugins/iCheck/icheck.min.js"></script>
     <script>
            $(document).ready(function () {
                $('.i-checks').iCheck({
                    checkboxClass: 'icheckbox_square-green',
                    radioClass: 'iradio_square-green',
                });
            });
            function fun1(){
            alert("添加成功！");
            }
        </script>
</body>
</html>










