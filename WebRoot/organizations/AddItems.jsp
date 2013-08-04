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
		<div align="center" id="content">

			<div id="line"></div>
			<form action="AddItem" method="post" class="contact_form">
				<ul>
					<li>
						<h2>请填写必要内容</h2>
					</li>
					<li>
						<label >
							项目名称:
						</label>
						<input type="text" name="itemname" placeholder="足球" required />
					</li>
					<li>
						<label >
							项目简介:
						</label>
						<textarea name="itemsynopsis" cols="40" rows="6" placeholder="足球运动每队8人，3名替补，5名队员，上下半场各20分钟" required /></textarea>
					</li>
				<li>
					<label>单位限制:</label>
						<select name="unitlimit" id="sel" style="color:white;">
						<option value="3" style="color:black;">教职工组</option>
						<option value="4" style="color:black;">学生组</option>
					</select>
				</li>
					 <li>
					<label>性别限制:</label>
						<select name="sexlimit" id="sel" style="color:white;">
						<option value="M" style="color:black;">男</option>
						<option value="F" style="color:black;">女</option>
					</select>
					</li>
					 <li>
						<label >
							最小年龄限制:
						</label>
						<input type="text" name="agelimitmin" placeholder="16" required />
					</li>
										 <li>
						<label >
							最大年龄限制:
						</label>
						<input type="text" name="agelimitmax" placeholder="25" required />
					</li>
					  <li>
						<label >
							每单位报名人数限制:
						</label>
						<input type="text" name="unitnumlimit" placeholder="4" required />
					</li>
										  <li>
						<label >
							报名人数总限制:
						</label>
						<input type="text" name="totalnumlimit" placeholder="21" required />
					</li>
					  <li>
						<label >
							报名截止时间:
						</label>
						<input type="text" name="stoptime" placeholder="20131111" required />
					</li>
					  <li>
						<label >
							决赛名称:
						</label>
						<input type="text" name="processName" value="决赛" required />
					</li>
					  <li>
						<label >
							决赛地点:
						</label>
						<input type="text" name="processPlace" placeholder="02运动场" required />
					</li>
					  <li>
						<label >
							决赛人数:
						</label>
						<input type="text" name="numEachGroup" placeholder="2" required />
					</li>
					  <li>
						<label >
							决赛时间(yyyyMMdd):
						</label>
						<input type="text" name="processTime" placeholder="20131212" required />
					</li>
					<li>
        				<button class="submit" type="submit">提交</button>
       			 		</li>
				</ul>
			</form>
		</div>
	</body>
</html>
