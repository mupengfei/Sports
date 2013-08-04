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
		<link rel="stylesheet" type="text/css" href="css/demo.css" />
		<link rel="stylesheet" type="text/css" href="css/style1.css" />
		<link rel="stylesheet" media="screen" href="css/styles.css">
		<style type="text/css">

#sel{
      -webkit-border-radius:5px ; -moz-border-radius:5px;
     border-width:1px 137px 3px 5px;
     -webkit-border-image:url("<%=basePath %>images/s1.jpg") 5 75 5 5;  -moz-border-image:url("<%=basePath %>images/s1.jpg") 15 61 3 5;
	}
</style>
	</head>

	<body style="background-image: url(<%=basePath %>images/pattern.png), url(<%=basePath %>images/1.jpg);">
	<div class="header">
				<strong>高校运动会管理系统</strong>
				<span class="right"> <a href="organizations/OrgMain.jsp"> <strong>返回到菜单</strong>
				</a> </span>
				<span class="right"> <a href="/sports/Login.jsp"> <strong>注销</strong>
				</a> </span>
				<div class="clr"></div>
			</div>
		<%
			String itemId = request.getParameter("itemId");
		%>
		<div align="center" id="content">
			<div id="line"></div>
			<form action="AddProcess" method="post" class="contact_form">
				<ul>
					<li>
						<h2>请填写必要内容</h2>
					</li>
					<li>
						<label >
							过程名称:
						</label>
						<input type="text" name="processName" placeholder="决赛" required />
					</li> 
						<%
						out.print("<input type='hidden' name='itemId' value=\"" + itemId
							+ "\" />");
						%> 
					<li>
						<label >
							过程时间(yyyyMMdd):
						</label>
						<input type="text" name="processTime" placeholder="20120608" required />
					</li>
					<li>
						<label >
							过程地点:
						</label>
						<input type="text" name="processPlace" placeholder="足球场" required />
					</li>
					<li>
						<label >
							过程人数:
						</label>
						<input type="text" name="numTotal" placeholder="16" required />
					</li>
					<li>
        				<button class="submit" type="submit">提交</button>
       			 		</li>										  
				</ul>
			</form>
		</div>
	</body>
</html>
