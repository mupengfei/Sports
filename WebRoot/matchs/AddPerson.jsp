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
<link rel="stylesheet" type="text/css" href="<%=basePath%>organizations/styles.css">
		<base href="<%=basePath%>">

		<title>高校运动会管理系统</title>
		<style type="text/css">
.contact_form{padding-top:40px;}
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
		<div align="center" id="content">
			<div id="line"></div>
			<form action="AddPerson" method="post" class="contact_form">
				<ul>
			<li><h2 style="align:left;font-size:16px;">登记人员信息</h2><span class="required_notification">* 表示必填项</span></li>
			<li>
				<label>人员姓名:</label>
            			<input type="text" name="personname" placeholder="John" required />
				<span class="form_hint">参赛人员名称</span>
			</li>
			<li>
				<label>人员性别:</label>
					<select name="sex" id="sel" style="color:white;">
					<option value="M" style="color:black;">男</option>
					<option value="F" style="color:black;">女</option>
				</select>
			</li>
			<li>
				<label>人员年龄:</label>
            			<input type="text" name="age" placeholder="20" required />
				<span class="form_hint">参赛人员年龄</span>
			</li>
			<li>
				<label>联系电话:</label>
            			<input type="text" name="tel" placeholder="180****4825" required />
				<span class="form_hint">联系电话</span>
			</li>

			<li>
        		<button class="submit" type="submit">登记</button>
       			 </li>
			</ul>				
			<!--

				
				<table>
					<tr>
						<td>
							<font size="3" color="red">*</font>
						</td>
						<td>
							人员姓名：
						</td>
						<td>
							<input type="text" name="personname" />
						</td>
					</tr>
					<tr>
						<td>
							<font size="3" color="red">*</font>
						</td>
						<td>
							人员性别：
						</td>
						<td>
							<select name="sex">
								<option value="F">
									男
								</option>
								<option value="M">
									女
								</option>
							</select>
						</td>
					</tr>
					<tr>
						<td>
							<font size="3" color="red">*</font>
						</td>
						<td>
							人员年龄:
						</td>
						<td>
							<input type="text" name="age" />
						</td>
					</tr>
					<tr>
						<td>
							<font size="3" color="red">*</font>
						</td>
						<td>
							电话:
						</td>
						<td>
							<input type="text" name="tel" />
						</td>
					</tr>
				</table> 
				<input type="submit" value="登记" />-->
			</form>
		</div>
	</body>
</html>
