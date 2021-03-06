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
hr{width:80%;border-color:#000;}

<!--表格样式-->
table {  
*border-collapse: collapse; /* IE7 and lower */  
border-spacing: 0;  
width: 100%;  
}  
  
.bordered {  
border: solid #ccc 1px;  
-moz-border-radius: 6px;  
-webkit-border-radius: 6px;  
border-radius: 6px;  
-webkit-box-shadow: 0 1px 1px #ccc;  
-moz-box-shadow: 0 1px 1px #ccc;  
box-shadow: 0 1px 1px #ccc;  
}  
  
.bordered tr:hover {  
background: #617A94;  
-o-transition: all 0.1s ease-in-out;  
-webkit-transition: all 0.1s ease-in-out;  
-moz-transition: all 0.1s ease-in-out;  
-ms-transition: all 0.1s ease-in-out;  
transition: all 0.1s ease-in-out;  
}  
  
.bordered td, .bordered th {  
border-left: 1px solid #ccc;  
border-top: 1px solid #ccc;  
padding: 10px;  
text-align: left;  
}  
  
.bordered th {  
background-color: #dce9f9;  
background-image: -webkit-gradient(linear, left top, left bottom, from(#ebf3fc), to(#dce9f9));  
background-image: -webkit-linear-gradient(top, #007FA7, #617A94);  
background-image: -moz-linear-gradient(top, #007FA7, #617A94);  
background-image: -ms-linear-gradient(top, #007FA7, #617A94);  
background-image: -o-linear-gradient(top, #007FA7, #617A94);  
background-image: linear-gradient(top, #007FA7, #617A94);  
-webkit-box-shadow: 0 1px 0 rgba(255,255,255,.8) inset;  
-moz-box-shadow:0 1px 0 rgba(255,255,255,.8) inset;  
box-shadow: 0 1px 0 rgba(255,255,255,.8) inset;  
border-top: none;  
text-shadow: 0 1px 0 rgba(255,255,255,.5);  
}  
  
.bordered td:first-child, .bordered th:first-child {  
border-left: none;  
}  
  
.bordered th:first-child {  
-moz-border-radius: 6px 0 0 0;  
-webkit-border-radius: 6px 0 0 0;  
border-radius: 6px 0 0 0;  
}  
  
.bordered th:last-child {  
-moz-border-radius: 0 6px 0 0;  
-webkit-border-radius: 0 6px 0 0;  
border-radius: 0 6px 0 0;  
}  
  
.bordered th:only-child{  
-moz-border-radius: 6px 6px 0 0;  
-webkit-border-radius: 6px 6px 0 0;  
border-radius: 6px 6px 0 0;  
}  
  
.bordered tr:last-child td:first-child {  
-moz-border-radius: 0 0 0 6px;  
-webkit-border-radius: 0 0 0 6px;  
border-radius: 0 0 0 6px;  
}  
  
.bordered tr:last-child td:last-child {  
-moz-border-radius: 0 0 6px 0;  
-webkit-border-radius: 0 0 6px 0;  
border-radius: 0 0 6px 0;  
}  

.add {
background-color: #68b12f;
background: -webkit-gradient(linear, left top, left bottom, from(#68b12f), to(#50911e));
background: -webkit-linear-gradient(top, #68b12f, #50911e);
background: -moz-linear-gradient(top, #68b12f, #50911e);
background: -ms-linear-gradient(top, #68b12f, #50911e);
background: -o-linear-gradient(top, #68b12f, #50911e);
background: linear-gradient(top, #68b12f, #50911e);
border: 1px solid #509111;
border-bottom: 1px solid #5b992b;
border-radius: 3px;
-webkit-border-radius: 3px;
-moz-border-radius: 3px;
-ms-border-radius: 3px;
-o-border-radius: 3px;
box-shadow: inset 0 1px 0 0 #9fd574;
-webkit-box-shadow: 0 1px 0 0 #9fd574 inset;
-moz-box-shadow: 0 1px 0 0 #9fd574 inset;
-ms-box-shadow: 0 1px 0 0 #9fd574 inset;
-o-box-shadow: 0 1px 0 0 #9fd574 inset;
color: white;
font-weight: bold;
padding: 6px 20px;
text-align: center;
text-shadow: 0 -1px 0 #396715;
}

.a{color:red}
</style>
</head>

<body style="background-image: url(<%=basePath %>images/pattern.png), url(<%=basePath %>images/1.jpg);">
	<% String itemId = request.getParameter("itemId");
	ItemDao iDao = new ItemDao();
	Item item = iDao.queryItemById(itemId);%> 
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
		<form action="AddItem" method="get" class="contact_form">  
		<ul>
					<li>
						<h2><span  class="a">如需删除请点击删除链接</span></h2>
					</li>
			<% out.print("<li>");
				out.print("比赛项目名称:"+item.getItemName());
				out.print("</li>");
				out.print("<li>");
				out.print("比赛项目简介:"+item.getItemSynopsis());
				out.print("</li>");
				out.print("<li>");
				out.print("参赛性别:"+("M".equals(item.getSexLimit())?"男":"女"));
				out.print("</li>");
				out.print("<li>");
				out.print("<a href='organizations/AddProcess.jsp?itemId="+itemId+"' class='add'>添加过程</a>");
				out.print("</li>");
				%>
				</ul>
			
			<% ProcessDao pDao = new ProcessDao();
			List<Map> list = pDao.queryProcessesByItemId(item.getItemId());%>
			
			<table class="bordered" style="margin-top:1em;">
			<thead>  
	<tr><th>过程名称</th><th>过程时间</th><th>过程地点</th><th>过程人数</th><th>点击删除</th></tr><thead> 
		<% for(Map map : list){
			out.print("<tr>");
			out.print("<td>");
			out.print(map.get("PROCESS_NAME"));
			out.print("</td>");
			out.print("<td>");
			out.print(map.get("PROCESS_TIME"));
			out.print("</td>");
			out.print("<td>");
			out.print(map.get("PROCESS_PLACE"));
			out.print("</td>");
			out.print("<td>");
			out.print(map.get("NUM_TOTAL"));
			out.print("</td>");
			out.print("<td>");
			//out.print("<a href='organizations/UpProcess.jsp?processId="+map.get("PROCESS_ID")+"'>修改</a>");
			if(!"1".equals(map.get("PROCESS_ORDER")+"")){
				out.print("<a href='DelProcess?processId="+map.get("PROCESS_ID")+"'>删除</a>");
			}
			out.print("</td>");
			out.print("</tr>");
		} 
		out.print("</table>"); 
		%>
		</form>
	</div>
</body>
</html>
