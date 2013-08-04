<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>高校运动会管理系统</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="css/demo.css" />
		<link rel="stylesheet" type="text/css" href="css/style1.css" />
		<link rel="stylesheet" media="screen" href="css/styles.css">
<meta http-equiv="Refresh" content="3;URL=organizations/OrgMain.jsp" />
  </head>
  
  <body style="background-image: url(<%=basePath %>images/pattern.png), url(<%=basePath %>images/1.jpg);">
    <h1>提交成功</h1>
    <br/>
    <br/>
    <h2>3秒后自动跳转返回……</h2>
    <h2><a href="organizations/OrgMain.jsp">※没反应请点击此处※</a></h2>
  </body>
</html>
