<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
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

<title>My JSP 'before_regist_success.jsp' starting page</title>

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
		Cookie[] cookies = request.getCookies();
		for (int i = 0; i < cookies.length; i++) {
			if ("registCount".equals(cookies[i].getName())) {
				cookies[i].setValue("1");
				cookies[i].setPath("/Lolit");
				response.addCookie(cookies[i]);
			}
		}

		String tName = (String) request.getAttribute("tName");
		String tBelonging = (String) request.getAttribute("tBelonging");
		String pName = (String) request.getAttribute("pName");
		session.setAttribute("tName", tName);
		session.setAttribute("tBelonging", tBelonging);
		session.setAttribute("pName", pName);
	%>

</body>
<script src="<%=request.getContextPath()%>/js/jquery-1.7.1.min.js"></script>
<script>
	window.onload = function() {
		window.location.href = "/Lolit/Front_End/Team_Apply/team_regist_success.jsp";
	}
</script>
</html>
