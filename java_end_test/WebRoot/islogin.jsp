<%@page import="com.student.model.usertable"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%
	usertable user=(usertable)session.getAttribute("user");
	if(user==null)
	{
	%>
	<jsp:forward page="index.jsp"></jsp:forward>
	<%}
	 %>
