<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE html>
<html lang="en">
<head>
<base href="<%=basePath%>">

<title>Prompt</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<meta charset="UTF-8">

<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/css/style.css">
<script type="text/javascript"
	src="<%=request.getContextPath()%>/js/global.js"></script>

</style>
</head>

<body>
	<div id="panel_div" class="bg_1"></div>
	<article class="prompt_panel shadow_b">

		<button class="return_button" id="return_button"
			onclick="returnPage()"></button>
		<section class="prompt_bg">
			<header>啊呀，操作怎么没有成功呢？</header>
			<br> <br> <br>
		</section>
		>
	</article>
</body>
</html>
