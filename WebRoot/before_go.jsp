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
	<%
		java.text.SimpleDateFormat formatter = new java.text.SimpleDateFormat(
				"yyyy-MM-dd HH:mm:ss");
		java.util.Date currentTime = new java.util.Date();//得到当前系统时间
		String str_date1 = formatter.format(currentTime); //将日期时间格式化 
		String str_date2 = currentTime.toString(); //将Date型日期时间转换成字符串形式

		Cookie ip_cookie = new Cookie("ip", request.getRemoteAddr());
		Cookie broswer_cookie = new Cookie("broswer",
				request.getHeader("User-agent"));
		Cookie time_cookie = new Cookie("time", str_date1);

		response.addCookie(ip_cookie);
		response.addCookie(broswer_cookie);
		response.addCookie(time_cookie);
	%>
</body>

<script src="<%=request.getContextPath()%>/js/jquery-1.7.1.min.js"></script>
<script>
	window.onload = function() {
		window.location.href = "/Lolit/Go.jsp";
	}
</script>
</html>
