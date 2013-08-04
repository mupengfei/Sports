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
<link rel="stylesheet" type="text/css" href="<%=basePath %>css/demo.css" />
<link rel="stylesheet" type="text/css" href="<%=basePath %>css/style1.css" />
		<style type="text/css">

.bmenu li{
	font-size:30px;padding-top:25px;
}

#logintop {
	width: 200px;
	height: 50px;
	background-color: #446DFF;
	margin: 0px;
	line-height: 50px;
}

#logintop h2 {
	color: #FFFFFF;
}

a {
	TEXT-DECORATION: none
}
</style>
	</head>

	<body>
	 <%session.setAttribute("dname","admin");%>   
		<div id="leftMenu" class="content">

			<ul class="bmenu">
                    <li><a href="<%=basePath %>referee/SelItem.jsp" target='contest'>成绩录入修改</a></li>
                    <li><a href="<%=basePath %>referee/SelItemshow.jsp" target='contest'>成绩查询</a></li>
                    <li><a href="<%=basePath %>referee/updatepassword.jsp" target='contest'>密码修改</a></li>

                	</ul>
                	
	<!--
			<div id="logintop" align="center">
				<a href='SelItem.jsp' target='contest'>
					<h2>
						成绩录入
					</h2> 
				</a>
			</div>
			<div id="logintop" align="center">
				<a href="updatepassword.jsp" target="contest">
					<h2>
						密码修改
					</h2> 
				</a>
			</div>-->
		</div>
	</body>
</html>
