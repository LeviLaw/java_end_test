<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'modifyOnestu_result.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  <%request.setCharacterEncoding("utf-8"); %>
  <body>
    <jsp:useBean id="stu" class="com.student.model.stuInfo"></jsp:useBean>
    <jsp:setProperty property="*" name="stu"/>
    <jsp:useBean id="stuSer" class="com.lrxhqujavaee.service.stuInfoservice"></jsp:useBean>
    <%
    out.print(stu.getId());
    out.print(stu.getTruename());
         %>
    <%
    if(stuSer.updatestu(stu))
    out.print("你成功啦！！");
    else
    out.print("you lose");
     %>
    
  </body>
</html>
