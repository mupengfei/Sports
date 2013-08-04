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
		<meta charset="utf-8">
		<title>HTML5 Contact Form | 觉唯前端</title>
		<link rel="stylesheet" media="screen" href="styles.css">
		<style>
.contact_form {
	padding-top: 40px;
}

.title {
	background-color: rgba(0, 0, 0, 0.56);
	text-align: center;
	width: 100%;
	position: fixed;
	top: 0;
	left: 0;
	padding: 5px 0;
}

.title a {
	color: #FFF;
	text-decoration: none;
	font-size: 16px;
	font-weight: bolder;
	line-height: 24px;
}
</style>
	</head>
	<body>
		<div class="title">
			<a href="http://www.jiawin.com/forms-css3-html5-validation/">教程：让你的表单升级到CSS3和HTML5客户端验证（返回文章）</a>
		</div>
		<form class="contact_form" action="#" method="post"
			name="contact_form">
			<ul>
				<li>
					<h2>
						联系我们
					</h2>
					<span class="required_notification">* 表示必填项</span>
				</li>
				<li>
					<label for="name">
						姓名:
					</label>
					<input type="text" placeholder="Javin" required />
				</li>
				<li>
					<label for="email">
						电子邮件:
					</label>
					<input type="email" name="email" placeholder="javin@example.com"
						required />
					<span class="form_hint">正确格式为：javin@something.com</span>
				</li>
				<li>
					<label for="website">
						网站:
					</label>
					<input type="url" name="website"
						placeholder="http://www.jiawin.com" required
						pattern="(http|https)://.+" />
					<span class="form_hint">正确格式为：http://www.jiawin.com</span>
				</li>
				<li>
					<label for="message">
						留言:
					</label>
					<textarea name="message" cols="40" rows="6"
						placeholder="觉唯前端，享受web前端开发和用户体验设计的乐趣" required></textarea>
				</li>
				<li>
					<button class="submit" type="submit">
						Submit Form
					</button>
				</li>
			</ul>
		</form>
	</body>
</html>
