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
	<%
		int eCodes = Integer.parseInt(request.getParameter("e"));
		String eRemind = "";
	%>
	<div id="panel_div" class="bg_1"></div>
	<article class="prompt_panel shadow_b">

		<button class="return_button" id="return_button"
			onclick="returnPage()"></button>
		<section class="prompt_bg">
			<header>啊呀，操作怎么没有成功呢？</header>
			<br>
			<%
				switch (eCodes) {
				case 800:
					eRemind = "队伍验证失败!";
					break;
				case 801:
					eRemind = "队伍抽签失败!";
					break;
				case 802:
					eRemind = "已经抽签!";
					break;
				case 900:
					eRemind = "注册异常!";
					break;
				case 901:
					eRemind = "队伍名为空!";
					break;
				case 902:
					eRemind = "团队口令为空!";
					break;
				case 903:
					eRemind = "代表院系年级不能为空!";
					break;
				case 905:
					eRemind = "队伍名称已经存在!";
					break;
				case 906:
					eRemind = "学号已经存在!";
					break;
				case 920:
					eRemind = "头像上传失败!";
					break;
				case 921:
					eRemind = "文件传输异常!";
					break;
				}
			%>
			<%=eRemind%>
			<br> <br>
		</section>
	</article>
</body>
</html>
