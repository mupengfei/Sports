<%@ page language="java" import="java.util.*,com.sports.model.queries.*,com.sports.model.entities.*" pageEncoding="UTF-8"%>
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
<style type="text/css">
.contact_form ul{width:500px;}
</style>
  </head>
  <%String errorMsg = (String)request.getSession().getAttribute("errorMsg");
  	int matchid =Integer.parseInt(request.getParameter("matchid"));
  	MatchDao dao = new MatchDao();
  	Match ma = dao.getMatchByMatchId(matchid); 
  	PersonDao pdao = new PersonDao();
  	Person per = pdao.queryPersonById(String.valueOf(ma.getPersonId()));
   %>
  <body>
    <div id="content">
				<div id="line"></div>
				<div id="password" align="center">
					<form action="UpdateMatch" method="post" class="contact_form">
						<ul>
					<li>
						<h2>录入成绩</h2>
					</li>
					<li>
						<label >
						运动员：
						</label>
						<%out.print(per.getPersonName()); %>
					</li>
					
						<input  name="matchid" value="<%= ma.getMatchId() %>" placeholder=<%=matchid %>" required style="visibility: hidden"/>
					
					 <li>
						<label >
							比赛成绩：：
						</label>
						<input  name="score" value="<%= ma.getMatchScore() %>" placeholder=" " required />
					</li>
					 <li>
						<label >
							比赛排名：
						</label>
						<input name="rank" value="<%= ma.getMatchRank() < 0 ? "" : ma.getMatchRank() %>" placeholder="1" required />
					</li>
					<input name="processId" value="<%= ma.getProcessId() %>" type = "hidden" required />
						<% if (errorMsg!=null){
	out.print("<div class='error message' style='color:red'>");
                out.print(" <h3>哦, 登录出错了</h3>");
                out.print("<p>大概是因为"+errorMsg+"</p>"); 
	out.print("</div>");
	request.getSession().setAttribute("errorMsg",null);
	}
	%>
					<li><button class="submit" type="submit">录入</button></li>
					</ul>
					</form>
				</div>
			</div>
  </body>
</html>
