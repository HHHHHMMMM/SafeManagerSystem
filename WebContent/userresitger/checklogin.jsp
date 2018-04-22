<%@ page language="java" import="java.sql.*" contentType="text/html;charset=utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <title>My JSP 'check.jsp' starting page</title>
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
<%
   request.setCharacterEncoding("utf-8");
   String usersemail=request.getParameter("Useremail");
 	String username=request.getParameter("Username");
   String pass=request.getParameter("Password");
   boolean flag=false;
   PreparedStatement sql=null;  
   ResultSet rs=null;
   Connection conn=null;
%>

<% 
    String driver = "com.mysql.jdbc.Driver";  
    Class.forName(driver);  
    conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/Myjdbc?character=UTF-8", "root", "");  
    sql =conn.prepareStatement("select * from staff where email=? and password=? ");
    sql.setString(1,usersemail);//这里的1,2代表上面的？,users和pass代表要传入的值
    sql.setString(2,pass);
    rs=sql.executeQuery();
    if (rs.next()) 
    {  
    	flag=true;
     }
   rs.close();
   sql.close();
   conn.close();
  %>
		
		<%
		if (flag==true){ 
		 session.setAttribute("Username", username); 
		response.sendRedirect("../staffindex/index.jsp");
		 
		 %> 
			<%}	 
		 
		
		  if(flag==false){
		%>
		
		<jsp:forward page="login2.jsp"/>
		<%} %>
		</body>
</html>
<script>

</script>
