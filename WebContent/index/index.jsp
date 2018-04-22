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

    <title>首页</title>

    <link href="../css/bootstrap.min.css" rel="stylesheet">
    <link href="../font-awesome/css/font-awesome.css" rel="stylesheet">

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
                          <%   String topusername=(String) session.getAttribute("Adminname");%>
                            <span class="clear"> <span class="block m-t-xs"> <strong class="font-bold"><%=topusername%></strong>
                             </span> <span class="text-muted text-xs block">管理员 </span> </span> </a>
                        <ul class="dropdown-menu animated fadeInRight m-t-xs">
                         
                           
                        </ul>
                    </div>
                    <div class="logo-element">
                        SIM
                    </div>
                </li>
                 <li>
                 <a href="../index/index.jsp"><i class="fa fa-th-large"></i> <span class="nav-label">首页</span></a>
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
                        <li><a href="resetshebei.jsp">重置设备运行状态</a></li>
                    </ul>
                </li>
                 <li>
                 <a href="../index/upload.jsp"><i class="fa fa-diamond"></i> <span class="nav-label">决策分析系统</span></a>
                </li>
                
               
          
                <li>
                    <a href="#"><i class="fa fa-edit"></i> <span class="nav-label">后勤人员管理</span><span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level collapse">
                        <li><a href="addstaff.jsp">添加人员</a></li>
                        <li><a href="delstaff.jsp">删除人员</a></li>
                        <li><a href="Updatestaff.jsp">修改人员信息</a></li>
                        
                    </ul>
                </li>
                <li >
                    <a href="#"><i class="fa fa-desktop"></i> <span class="nav-label">后勤人员工作信息</span>  </a>
                    <ul class="nav nav-second-level collapse">
                        <li><a href="viewdaka.jsp">后勤人员打卡信息</a></li>
                        <li><a href="viewqingjia.jsp">后勤人员请假信息</a></li>
                    </ul>
                </li>
                
                <li>
                    <a href="../map/map.jsp"><i class="fa fa-bar-chart-o"></i> <span class="nav-label">作者所在地</span><span class="fa arrow"></span></a>
                   
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
                  
                </li>
                <li class="dropdown">
                    <a class="dropdown-toggle count-info" data-toggle="dropdown" href="#">
                        <i class="fa fa-bell"></i>  <span class="label label-primary">8</span>
                    </a>
                   
                </li>


                <li>
                    <a href="../userresitger/adminlogin.jsp">
                        <i class="fa fa-sign-out"></i> 注销
                    </a>
                </li>
            </ul>

        </nav>
        </div>
    

        
     
        <div class="row border-bottom gray-bg">
       
        
      
        </div>

            <div class="wrapper wrapper-content animated fadeIn">

                <div class="p-w-md m-t-sm">
                    <div class="row">

                        <div class="col-sm-4">
                            <h1 class="m-b-xs">
                                31,997
                            </h1>
                            <small>
                                当前月份设备总接入用电量
                            </small>
                            <div id="sparkline1" class="m-b-sm"></div>
                            <div class="row">
                                <div class="col-xs-4">
                                    <small class="stats-label">接入总量</small>
                                    <h4>236 128.90</h4>
                                </div>

                                <div class="col-xs-4">
                                    <small class="stats-label">当前月新接入增量</small>
                                    <h4>5.9%</h4>
                                </div>
                                <div class="col-xs-4">
                                    <small class="stats-label">上月接入量</small>
                                    <h4>432.071</h4>
                                </div>
                            </div>

                        </div>
                        <div class="col-sm-4">
                            <h1 class="m-b-xs">
                               5,000
                            </h1>
                            <small>
                                24h峰值接入量
                            </small>
                            <div id="sparkline2" class="m-b-sm"></div>
                            <div class="row">
                                <div class="col-xs-4">
                                    <small class="stats-label">24h平均接入量</small>
                                    <h4>3,100</h4>
                                </div>

                                <div class="col-xs-4">
                                    <small class="stats-label">今天峰值增量</small>
                                    <h4>13.45%</h4>
                                </div>
                                <div class="col-xs-4">
                                    <small class="stats-label">昨日峰值接入量</small>
                                    <h4>4,200</h4>
                                </div>
                            </div>


                        </div>
                        <div class="col-sm-4">

                            <div class="row m-t-xs">
                                <div class="col-xs-6">
                                    <h5 class="m-b-xs">第三季度汇总</h5>
                                    <h1 class="no-margins">182,00</h1>
                                    <div class="font-bold text-navy">22% <i class="fa fa-bolt"></i></div>
                                </div>
                                <div class="col-xs-6">
                                    <h5 class="m-b-xs">去年全年汇总</h5>
                                    <h1 class="no-margins">1,398,00</h1>
                                    <div class="font-bold text-navy">36% <i class="fa fa-bolt"></i></div>
                                </div>
                            </div>


                            <table class="table small m-t-sm">
                                <tbody>
                                <tr>
                                    <td>
                                        <strong>设备总量</strong> <br>388

                                    </td>
                                    <td>
                                        <strong>设备能源使用量</strong> 182,000
                                    </td>

                                </tr>
                                <tr>
                                    <td>
                                        <strong>季度峰值</strong> <br>19,200
                                    </td>
                                    <td>
                                        <strong>季度平均值</strong><br> 15,000
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <strong>接入公司：</strong> 4
                                    </td>
                                    <td>
                                        <strong>接入城市</strong><br>2
                                    </td>
                                </tr>
                                </tbody>
                            </table>



                        </div>

                    </div>

                    <div class="row">
                        <div class="col-lg-12">
                            <div class="small pull-left col-md-3 m-l-lg m-t-md">
                                <strong>今日与昨日各小时设备运行能源接入比较图</strong>
                            </div>
                           
                            <div class="flot-chart m-b-xl">
                                <div class="flot-chart-content" id="flot-dashboard5-chart"></div>
                            </div>
                        </div>
                    </div>


                   

                </div>


            </div>

     

        </div>
  
    </div>
    
       
    
</body>
</html>
<!-- Mainly scripts -->
    <script src="../js/jquery-2.1.1.js"></script>
    <script src="../js/bootstrap.min.js"></script>
    <script src="../js/plugins/metisMenu/jquery.metisMenu.js"></script>
    <script src="../js/plugins/slimscroll/jquery.slimscroll.min.js"></script>

    <!-- Flot -->
    <script src="../js/plugins/flot/jquery.flot.js"></script>
    <script src="../js/plugins/flot/jquery.flot.tooltip.min.js"></script>
    <script src="../js/plugins/flot/jquery.flot.spline.js"></script>
    <script src="../js/plugins/flot/jquery.flot.resize.js"></script>
    <script src="../js/plugins/flot/jquery.flot.pie.js"></script>
    <script src="../js/plugins/flot/jquery.flot.symbol.js"></script>
    <script src="../js/plugins/flot/jquery.flot.time.js"></script>

    <!-- Custom and plugin javascript -->
    <script src="../js/inspinia.js"></script>
    <script src="../js/plugins/pace/pace.min.js"></script>

    <!-- Sparkline -->
    <script src="../js/plugins/sparkline/jquery.sparkline.min.js"></script>


    <script>
        $(document).ready(function() {

            var sparklineCharts = function(){
                $("#sparkline1").sparkline([34, 43, 43, 35, 44, 32, 44, 52], {
                    type: 'line',
                    width: '100%',
                    height: '50',
                    lineColor: '#1ab394',
                    fillColor: "transparent"
                });

                $("#sparkline2").sparkline([32, 11, 25, 37, 41, 32, 34, 42], {
                    type: 'line',
                    width: '100%',
                    height: '50',
                    lineColor: '#1ab394',
                    fillColor: "transparent"
                });

                $("#sparkline3").sparkline([34, 22, 24, 41, 10, 18, 16,8], {
                    type: 'line',
                    width: '100%',
                    height: '50',
                    lineColor: '#1C84C6',
                    fillColor: "transparent"
                });
            };

            var sparkResize;

            $(window).resize(function(e) {
                clearTimeout(sparkResize);
                sparkResize = setTimeout(sparklineCharts, 500);/*5s刷新一次*/
            });

            sparklineCharts();




            var data1 = [
                [0,4],[1,8],[2,5],[3,10],[4,4],[5,16],[6,5],[7,11],[8,6],[9,11],[10,20],[11,10],[12,13],[13,4],[14,7],[15,8],[16,12]
            ];
            var data2 = [
                [0,0],[1,2],[2,7],[3,4],[4,11],[5,4],[6,2],[7,5],[8,11],[9,5],[10,4],[11,1],[12,5],[13,2],[14,5],[15,2],[16,0]
            ];
            $("#flot-dashboard5-chart").length && $.plot($("#flot-dashboard5-chart"), [
                        data1,  data2
                    ],
                    {
                        series: {
                            lines: {
                                show: false,
                                fill: true
                            },
                            splines: {
                                show: true,
                                tension: 0.4,
                                lineWidth: 1,
                                fill: 0.4
                            },
                            points: {
                                radius: 0,
                                show: true
                            },
                            shadowSize: 2
                        },
                        grid: {
                            hoverable: true,
                            clickable: true,

                            borderWidth: 2,
                            color: 'transparent'
                        },
                        colors: ["#1ab394", "#1C84C6"],
                        xaxis:{
                        },
                        yaxis: {
                        },
                        tooltip: false
                    }
            );

        });
    </script>
