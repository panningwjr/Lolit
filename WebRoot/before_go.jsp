<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

</head>

<body>
	<%=request.getRemoteAddr()%>
</body>

<script src="<%=request.getContextPath()%>/js/jquery-1.7.1.min.js"></script>
<script>
	window.onload = addCookie('TeamAction','<%=request.getRemoteAddr()%>',9000);

	function addCookie(objName, objValue, objHours) {//添加cookie
		var str = objName + "=" + escape(objValue);
		if (objHours > 0) {//为0时不设定过期时间，浏览器关闭时cookie自动消失
			var date = new Date();
			var ms = objHours * 3600 * 1000;
			date.setTime(date.getTime() + ms);
			str += "; expires=" + date.toGMTString();
		}
		document.cookie = str;
		alert("添加cookie成功" + document.cookie);
	}
</script>
</html>
