<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'validate.jsp' starting page</title>
    
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
    <jsp:useBean id="user" class="com.student.model.usertable"></jsp:useBean>
    <jsp:useBean id="userservice" class="com.lrxhqujavaee.service.userservice"></jsp:useBean>
    <jsp:setProperty property="*" name="user"/>
    
    <%
    out.print(user.getUsername());
    out.print(user.getPassword());
    //进入页面
    if(userservice.vailUser(user))
    {
    	//保存信息
    	session.setAttribute("user",user);
    %>
    	<jsp:forward page="main.jsp"></jsp:forward>
    <%
    }
    else{
    session.setAttribute("user",user);
    %>
    	<jsp:forward page="main.jsp"></jsp:forward>
    <%
    }
     %>
  </body>
</html>
