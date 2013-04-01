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

<title>Lolit后台管理</title>

<meta charset="utf-8">
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">


<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/css/style_b.css">

</head>

<body>
	<div class="SI_panel">
		<form id="sign_in" method="post">
			<button type="button" class="SI_button" onclick="chooseChannel('1',this)">HR</button>
			<button type="button" class="SI_button" onclick="chooseChannel('2',this)">赛组委</button>
			<button type="button" class="SI_button" onclick="chooseChannel('3',this)">营销</button>
			<button type="button" class="SI_button" onclick="chooseChannel('4',this)">转播</button>
			<section class="SI_section shadow_b">
				<input type="text" id="mAcName" name="mAcName" placeholder="ID" required><input
					type="password" id="mPwd" name="mPwd" placeholder="PW" required>
				<button type="button" class="SI_submit" id="mSign_in"
					disabled="true" onclick="signIn()">请先选择权限通道</button>
			</section>
		</form>
	</div>
</body>

<script type="text/javascript"
	src="<%=request.getContextPath()%>/js/global.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/js/back_end.js"></script>

</html>
