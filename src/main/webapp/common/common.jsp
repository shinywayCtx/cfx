<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
 
<%
 
	String cfx = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ request.getContextPath() + "/";
 
%>
 
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<base href="<%=cfx%>">
 
 
<link rel="stylesheet" href="bootstrap/css/bootstrap.css" /> 
<link rel="stylesheet" href="bootstrap/css/font-awesome.min.css"/>
<link rel="stylesheet" href="bootstrap/css/bootstrap-table.css"/>
 
<script type="text/javascript" src="bootstrap/js/jquery-1.11.3.min.js"></script>

 
 
</html>