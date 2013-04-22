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

<title>Apply success</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">

<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/css/style.css">

</head>

<%
	request.setAttribute("tName", request.getAttribute("tName"));
	request.setAttribute("tBelonging",
			request.getAttribute("tBelonging"));
	request.setAttribute("pName", request.getAttribute("pName"));
%>

<body>
	<div id="panel_div" class="bg_1"></div>
	<article class="apply_suc_panel shadow_b">

		<section class="apply_suc_bg"></section>
		<header>
			<img src="images/apply/congratulation.png" class="congra"><br>
			<label><%=request.getAttribute("tName")%></label><br> <span><%=request.getAttribute("")%></span><span>队长：<%=request.getAttribute("")%></span><br>
			<aside>非常感谢您的耐心注册，并恭喜您的队伍已完成第一步报名任务！</aside>
			<div class="apply_step">
				<section class="shadow_a1 radius_a step_done">
					<h2>1</h2>
					<p>已完成</p>
				</section>
				<section class="shadow_a1 radius_a">
					<h2>2</h2>
					<p>完善队伍信息，赛组委将与您的队伍取得联系，并审核信息，以确保赛事有序地进行。</p>
				</section>
				<section class="shadow_a1 radius_a">
					<h2>3</h2>
					<p>
						参加并完成2场测试分段赛，<br>领取皮肤！
					</p>
				</section>
			</div>
		</header>

	</article>

	<article class="skin_list shadow_a">
		<div>
			<img src="images/hero_skin/45_1.jpg" class="shadow_b"> <img
				src="images/hero_skin/39_1.jpg" class="shadow_b"> <img
				src="images/hero_skin/39_2.jpg" class="shadow_b"> <img
				src="images/hero_skin/23_1.jpg" class="shadow_b"> <img
				src="images/hero_skin/23_2.jpg" class="shadow_b">
		</div>
	</article>
</body>

<script type="text/javascript">
	window.onload = function() {
		if (navigator.userAgent.indexOf("MSIE 9.0") > 0
				|| navigator.userAgent.indexOf("MSIE 8.0") > 0
				|| navigator.userAgent.indexOf("MSIE 7.0") > 0
				|| navigator.userAgent.indexOf("MSIE 6.0") > 0) {
			window.location.href = "/Lolit/Front_End/Team_Apply/team_regist_success_ie.jsp";
		}
	};
</script>

<script type="text/javascript"
	src="<%=request.getContextPath()%>/js/global.js"></script>

</html>
