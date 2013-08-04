<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
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
	<%session.setAttribute("dname","admin"); %>
		<div id="leftMenu" class="content">
			<ul class="bmenu">
                    <li><a href="<%=basePath %>matchs/SelMatch.jsp" target='contest'>参赛单位报名</a></li>
                    <li><a href="<%=basePath %>matchs/DelMatch.jsp" target='contest'>查看历史报名</a></li>
                    <li><a href="<%=basePath %>matchs/SelItemshow.jsp" target='contest'>查询成绩</a></li>
                    <li><a href="<%=basePath %>matchs/AddPerson.jsp" target='contest'>参赛组人员登记</a></li>
                    <li><a href="<%=basePath %>matchs/DelPerson.jsp" target='contest'>参赛组人员删除</a></li> 
                	</ul>
		</div>
	</body>
</html>
