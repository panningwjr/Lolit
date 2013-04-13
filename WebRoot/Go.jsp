<%@ page language="java" import="java.util.*,vo.*;" pageEncoding="UTF-8"
	contentType="text/html; charset=utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<base href="<%=basePath%>">

<title>LoLit 工大LOL玩家的狂欢盛宴</title>

<meta charset="utf-8">
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">


<link rel="stylesheet"
	href="<%=request.getContextPath()%>/css/style.css">

</head>

<body
	style="background: url(/Lolit/images/bg_black.png) center top repeat-y;">
	<div style="margin: 250px auto; width: 220px; text-align: center;">
		<img src="images/lolit.png" width="210px">
		<object>
			<param name="wmode" value="Opaque">
			<embed src="images/welcome/loading.swf" width="60px" height="60"
				style="margin: 70px 0 0 -5px;"></embed>
		</object>
		<div>
</body>

<script src="<%=request.getContextPath()%>/js/global.js"></script>

<script type="text/javascript">
	window.onload = function() {
		setTimeout("goWebsite()", 3500);
	};
</script>

</html>
