<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<base href="<%=basePath%>">

		<title>高校运动会管理系统</title>
	</head>

	<body>
		<div style="height: 202px;">
			<div dvwidget="html.richtext" class="richText">
				<div style="text-align: center;">
					<span
						style="font-family: 'Times New Roman'; font-size: -webkit-xxx-large;"><br />
					</span>
				</div>
				<div style="text-align: center;">
					<span
						style="font-family: 'Times New Roman'; font-size: -webkit-xxx-large;">高校运动会管理系统</span>
				</div>
			</div>
		</div>
		<div style="height: 202px;" align="center">
			<a href="referee/SelItem.jsp"><h2>成绩录入</h2></a>
			<a href="Login.jsp"><h2>退出</h2></a>
		</div>
	</body>
</html>
