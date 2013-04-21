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

<title>My JSP 'before_front_end_prompt.jsp' starting page</title>

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
		int eCodes = 0;
		if (request.getParameter("e") != null) {
			eCodes = Integer.parseInt(request.getParameter("e"));
		}
		session.setAttribute("ErrorCodes", eCodes);
	%>
</body>
<script src="<%=request.getContextPath()%>/js/jquery-1.7.1.min.js"></script>
<script>
	window.onload = function() {
		window.location.href = "/Lolit/Front_End/front_end_prompt.jsp";
	}
</script>
</html>
