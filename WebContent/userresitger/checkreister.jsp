<%@ page language="java" import="java.sql.*" contentType="text/html;charset=utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>检验注册页面</title>
    <meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
    <br>
   <%
   request.setCharacterEncoding("utf-8");
   String AdminID=request.getParameter("AdminID");
   String AdminPassword=request.getParameter("AdminPassword");
   String AdminEmail=request.getParameter("AdminEmail");
   String AdminName=request.getParameter("AdminName");
   %>
   <% 
   
    Class.forName("com.mysql.jdbc.Driver");  
    Connection conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/Myjdbc?characterEncoding=UTF-8", "root", "");  
    PreparedStatement sql =conn.prepareStatement("insert into admin(adminid,adminname,adminemail,adminpassword)values(?,?,?,?)");
    sql.setString(1,AdminID);
    sql.setString(2,AdminName); 
     sql.setString(3,AdminEmail); 
     sql.setString(4,AdminPassword); 
    int rtn=sql.executeUpdate();
   	 sql.close();
    	conn.close();
    	response.sendRedirect("adminlogin.jsp");
    %>
   
  </body>
</html>