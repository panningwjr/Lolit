<%@ page language="java" import="java.util.*, vo.*;"
	pageEncoding="UTF-8" contentType="text/html; charset=utf-8"%>
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

</head>

<body onresize="bgWidth()" onload="bgWidth()">

	<div id="panel_div" class="bg_1" style="left: 0px;"></div>

	<article class="sortition_panel">
		<%
			ArrayList<Team> tList = new ArrayList<Team>();
			tList = (ArrayList<Team>) request.getAttribute("tList");
			for (int i = 0; i < tList.size(); i++) {
				Team team = tList.get(i);

				if (team.gettOrder() == 999) {
		%>
		<section class="team_st_box shadow_a" id="<%=team.gettId()%>"
			onclick="chooseTeam(<%=team.gettId()%>)">
			<%
				} else {
			%><section class="team_st_box2 opacityLight">
				<%
					}
				%>
				<img alt="" src="/Lolit/images/bg_main.jpg">
				<%=team.gettName()%>
			</section>
			<%
				}
			%>
			<div class="space_l250"></div>
	</article>

	<section class="lot_panel shadow_b" id="lot_panel">
		<section>请在上面选择您要进行抽签的队伍</section>
	</section>

</body>

<script type="text/javascript"
	src="<%=request.getContextPath()%>/js/global.js"></script>

</html>
