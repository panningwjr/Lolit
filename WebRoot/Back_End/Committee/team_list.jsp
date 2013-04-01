<%@ page language="java" import="java.util.*,vo.*;" pageEncoding="UTF-8"
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

<title>Lolit 仪表盘 - 赛组委</title>

<meta charset="utf-8">
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">


<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/css/style_b.css">

</head>

<body class="list_mem_bg">
	<table class="list_mem_table list_mar">
		<section>
			<tr class="list_header">
				<td class="list_mem_name"><span>ID</span><label>队伍名</label><span>队长</span><span>所在大区</span><span>代表院系</span>
				</td>
				<td class="op_span">操作</td>
			</tr>
			<%
				HttpSession se = request.getSession();
				ArrayList<Team> tList = (ArrayList<Team>) se.getAttribute("tList");
				for (int i = 0; i < tList.size(); i++) {
					Team team = tList.get(i);
					Player captain = team.getP1();
			%>
			<tr class="list_tr">
				<td class="list_mem_name" onclick="getArticle()"><span><%=team.gettId()%></span><label
					onclick="showDetails(<%=i%>)"><%=team.gettName()%></label><span><%=captain.getpName()%></span><span><%=captain.getpServer()%></span><span><%=team.gettBelonging()%></span>
				</td>
				<td class="del_button">...</td>
			</tr>
			<%
				}
			%>
		</section>
	</table>
	<%
		se.setAttribute("tList", null);
	%>
</body>

<script type="text/javascript"
	src="<%=request.getContextPath()%>/js/global.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/js/back_end.js"></script>

</html>
