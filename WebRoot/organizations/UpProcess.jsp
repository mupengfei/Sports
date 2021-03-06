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
<style type="text/css">
#line {
	width: 670px;
	height: 2px;
	margin: 0 auto;
	background-color: #0012C8;
}

#select {
	font-size: 25px;
}

#sel li{
 text-align:center;
 display:block;
 width:300px;
 line-height:50px
}
#sel li a{
 display:block;
 float:right;
 width:300px;
 text-decoration:none;
}
#sel li a:hover{
 color:#446DFF;
 background:#ccc;
}
</style>
</head>

<body>
	<% String itemId = request.getParameter("itemId"); %> 
	<div  align="center" id="content">
			<center>
				<h2>
					请填写必要内容
				</h2>
			</center>
			<div id="line"></div>  
		<form action="AddProcess" method="post">
			<p>
				过程名称: <input type="text" name="processName" />
			</p>
			<p>
				项目编号: <% out.print("<input type='text' name='itemId' value=\""+itemId+"\" />"); %>
			</p>
			<p>
				过程时间(yyyyMMdd): <input type="text" name="processTime" />
			</p>
			<p>
				过程地点: <input type="text" name="processPlace" />
			</p>
			<p>
				过程人数: <input type="text" name="numTotal" />
			</p>
			<input type="submit" value="提交" />
		</form>
	</div>
</body>
</html>
