<%@ page language="java" import="java.util.*,com.sports.model.queries.*,com.sports.model.entities.*" pageEncoding="UTF-8"%>
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

<body style="background-image: url(images/pattern.png), url(images/1.jpg);"> 
	<% ItemDao iDao = new ItemDao();
				List<Item> list = iDao.queryAllItems();%>
				<div class="header">
				<strong>高校运动会管理系统</strong>
				<span class="right"> <a href="organizations/OrgMain.jsp"> <strong>返回到菜单</strong>
				</a> </span>
				<span class="right"> <a href="/sports/Login.jsp"> <strong>注销</strong>
				</a> </span>
				<div class="clr"></div>
			</div>
	<div  align="center" id="content">
			<div id="line"></div>  
		<form action="organizations/MagItems.jsp" method="get" class="contact_form"> 
			<ul>
					<li>
						<h2>请选择比赛项目</h2> 
					</li>
					<li>
					<label>选择项目：</label>
						<select name="itemId" id="sel" style="color:white;">
						<% 
					for(Item item:list){
						out.print("<option value=\""+item.getItemId()+"\"  style=\"color:black\">"+item.getItemName()+item.getSexLimit()+"</option>");
					}%>					
					</select>
					</li>
					<li>
        				<button class="submit" type="submit">提交</button>
       			 		</li>
       		</ul> 		
       			<!-- 
			<p>
				选择项目： <select name="itemId">
					<% 
					for(Item item:list){
						out.print("<option value=\""+item.getItemId()+"\">"+item.getItemName()+item.getSexLimit()+"</option>");
					}%>
				</select>
			</p>
			<input type="submit" value="提交" /> -->
		</form>
	</div>
</body>
</html>
