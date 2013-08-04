<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>高校运动会管理系统</title>
	  
     
        <link rel="stylesheet" type="text/css" href="<%=basePath %>css/demo.css" />
        <link rel="stylesheet" type="text/css" href="<%=basePath %>css/style1.css" />
    

  </head>
  
  <body style="background-image: url(<%=basePath %>images/pattern.png), url(<%=basePath %>images/1.jpg);">
        <div class="container">
            <div class="header">
                <strong>高校运动会管理系统</strong> 
                <span class="right">
                    <a href="<%=basePath %>Login.jsp">
                        <strong>注销</strong>
                    </a>
                </span>
                <div class="clr"></div>
            </div>
            <h1>组委会管理: </h1>
            <div class="content">
                <ul class="bmenu">
                    <li><a href="<%=basePath %>organizations/AddItems.jsp">项目公布</a></li>
                    <li><a href="<%=basePath %>organizations/SelItems.jsp">项目管理</a></li>
                     <li><a href="<%=basePath %>organizations/signup.jsp">查看报名</a></li>
                     <li><a href="<%=basePath %>organizations/SelItemshow.jsp">查看成绩</a></li>
                    <li><a href="<%=basePath %>organizations/award.jsp">奖品管理</a></li>
                    <li><a href="<%=basePath %>organizations/updatepassword.jsp">密码修改</a></li> 
                </ul>
            </div>
        </div> 
    </body>
</html>
