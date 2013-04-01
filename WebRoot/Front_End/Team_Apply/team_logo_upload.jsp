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

<title>Registration Form</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<meta charset="UTF-8">

<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/css/style.css">

</head>

<body onresize="bgWidth()" onload="bgWidth()">
	<div id="panel_div" class="bg_1"></div>

	<article class="register_article">

		<form enctype="multipart/form-data" id="TLogoUpload"
			action="frontend/teamRegist/TLogoUpload"
			method="post">

			<button class="return_button" id="return_button"
				onclick="returnPage()"></button>

			<section class="register_team shadow_b">
				<header>
					<hgroup>
						<h2>Registration Form</h2>
						<h3>报名表</h3>
					</hgroup>
				</header>



				<ul class="ul_form_a">
					<li><h4>上传队伍 Logo</h4></li>

					<li class="li_logo" id="li_tLogo"><label for="tLogo"
						class="label_reg">队伍Logo:</label> <img class="img_view shadow_a"
						for="tLogo" id="tLogoView" src="/Lolit/images/bg_main.jpg"></img>
						<div>
							<button type="button" class="choose_logo" id="de_logo"
								onclick="usetLogo('de')">默认官方定制</button>
							<button type="button" class="unchoose_logo shadow_a"
								id="self_logo" onclick="usetLogo('self')">自定义上传</button>
						</div>
						<aside class="tlogo_ps" id="tlogo_ps">这里需要您选择代表队伍的Logo，如您不自行上传，赛组委将默认为您定制以您队伍名为主体的个性Logo。</aside>
					</li>
			</section>


			<section class="register_submit opacityDeep shadow_b">
				<button type="submit" class="submit_reg"
					onclick="return teamRegCheck();">
					<span class="button_span_a">确认</span><span class="button_span_b">以完成报名！</span>
				</button>
			</section>
		</form>
	</article>
	<footer class="Footer"> </footer>
</body>

<script type="text/javascript"
	src="<%=request.getContextPath()%>/js/global.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/js/check.js"></script>

</html>
