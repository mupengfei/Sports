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
<link rel="stylesheet" type="text/css" href="<%=basePath%>organizations/styles.css">
<style type="text/css">
#sel{
      -webkit-border-radius:5px ; -moz-border-radius:5px;
     border-width:1px 137px 3px 5px;
     -webkit-border-image:url("<%=basePath %>images/s1.jpg") 5 75 5 5;  -moz-border-image:url("<%=basePath %>images/s1.jpg") 15 61 3 5;
	}


.contact_form ul{width:500px}


.contact_form input:focus{ /* add this to the already existing style */
    width:200px;
}

.contact_form input{ /* add this to the already existing style */
	width:180px;
    -moz-transition: padding .25s;
    -webkit-transition: padding .25s;
    -o-transition: padding .25s;
    transition: padding .25s;
}
</style>
</head>

<body>
	<% Unit unit = (Unit)request.getSession().getAttribute("_currentUnit_"); 
		ItemDao iDao = new ItemDao();
		List<Item> list = iDao.queryItemsByUnit(unit.getUnitType());
	%> 
	<div  align="center"  id="content">
			<div id="line"></div> 
		<form action="matchs/matchPerson.jsp" method="get" class="contact_form"> 
		<ul>
			<li><h2 style="align:left;font-size:16px;">请选择报名项目</h2></li>
				<label>选择项目：</label>		
					<select name="itemId" id="sel" style="color:white;">
					<% 
					for(Item item:list){
						out.print("<option value=\""+item.getItemId()+"\" style=\"color:black;\">"+item.getItemName()+item.getSexLimit()+"</option>");
					}%>				
				</select>
			</li>
			<li>
        		<button class="submit" type="submit">提交</button>
       			 </li>
			</ul>	

		</form>
	</div>
</body>
</html>
