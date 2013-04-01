<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"
	contentType="text/html; charset=utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML>
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'home.jsp' starting page</title>

<meta charset="utf-8">
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">


<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/css/style.css">
<script type="text/javascript"
	src="<%=request.getContextPath()%>/js/global.js"></script>

</head>

<body>
	<div id="bg_main">
		<div id="side_bar" class="shadow_b">
			<ul>
				<li><img></li>
				<li><iframe width="100%" frameborder="no" border="0"
						framespacing="0"></iframe></li>
			</ul>
		</div>
		<div id="main_div">
			<nav id="nav_main" class="opacityLight shadow_b">123</nav>
			<article class="opacityDeep post_impor shadow_a">
				<section class="post_section">123456</section>
				<header class="post_header opacityLight">123</header>
			</article>
			<article class="opacityDeep post shadow_a">
				<section class="post_section">123456</section>
				<header class="post_header opacityLight">123</header>
			</article>
		</div>
	</div>
</body>
</html>
