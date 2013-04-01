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

<title>Lolit 工大LOL玩家的狂欢盛宴</title>

<meta charset="utf-8">
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">


<link rel="stylesheet"
	href="<%=request.getContextPath()%>/css/style.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/css/flash.css" />

</head>

<body>
	<header class="wel_header shadow_b"> </header>


	<div class="banner">
		<ul class="slider">
			<li>
				<div class="bg bg-1"></div>
				<div class="pic pic-1"></div>
				<div class="txt-warp">
					<div class="txt txt-1"></div>
				</div></li>
			<li>
				<div class="bg bg-2"></div>
				<div class="pic pic-2"></div>
				<div class="txt-warp">
					<div class="txt txt-2"></div>
				</div></li>
			<li>
				<div class="bg bg-3"></div>
				<div class="pic pic-3"></div>
				<div class="txt-warp">
					<div class="txt txt-3"></div>
				</div></li>
			<li>
				<div class="bg bg-4"></div>
				<div class="pic pic-4"></div>
				<div class="txt-warp">
					<div class="txt txt-4"></div>
				</div></li>
		</ul>
		<div class="count">
			<ul class="num">
				<li class="on">1</li>
				<li>2</li>
				<li>3</li>
				<li>4</li>
			</ul>
		</div>
	</div>

	<section class="wel_apply shadow_b">
		<ul class="wel_ul">
			<li>竞赛 社交 直播 周边活动等全方位娱乐新体验，工大英雄联盟玩家的狂欢Party！</li>
			<li>完成3个报名步骤即可获得可选炫酷英雄皮肤！<em>100%</em>！</li>
			<li><object>
					<param name="wmode" value="Opaque">
					<embed src="/Lolit/images/welcome/apply_button.swf" wmode="Opaque" ></embed>
				</object>
			</li>
			<li></li>
		</ul>
	</section>

</body>

<script src="<%=request.getContextPath()%>/js/global.js"></script>
<script src="<%=request.getContextPath()%>/js/back_end.js"></script>
<script src="<%=request.getContextPath()%>/js/jquery-1.7.1.min.js"></script>

<script type="text/javascript">
	$(function() {
		var j = 4;
		a(4);
		setInterval(function() {
			b(j);
			j--;
			var arr = [ 0, 3, 2, 1, 0 ];
			$(".num li").removeClass("on").eq(arr[j]).addClass("on");
			console.log(j + ":::" + arr[j]);
		}, 7000)
		function a(i) {
			$(".bg-" + i).addClass("bg-" + i + "-lay");
			$(".pic-" + i).addClass("pic-" + i + "-lay");
			$(".txt-" + i).addClass("txt-" + i + "-lay");
		}
		function b(i) {
			if (i < 2) {
				$(".bg-" + i).addClass("bg-" + i + "-2-lay").removeClass(
						"bg-" + i + "-lay");
				$(".pic-" + i).addClass("pic-" + i + "-2-lay").removeClass(
						"pic-" + i + "-lay");
				$(".txt-" + i).addClass("txt-" + i + "-2-lay").removeClass(
						"txt-" + i + "-lay");
				a(4);
				j = 5;
			} else {
				$(".bg-" + i).addClass("bg-" + i + "-2-lay").removeClass(
						"bg-" + i + "-lay");
				$(".pic-" + i).addClass("pic-" + i + "-2-lay").removeClass(
						"pic-" + i + "-lay");
				;
				$(".txt-" + i).addClass("txt-" + i + "-2-lay").removeClass(
						"txt-" + i + "-lay");
				;
				$(".bg-" + (i - 1)).addClass("bg-" + (i - 1) + "-lay");
				$(".pic-" + (i - 1)).addClass("pic-" + (i - 1) + "-lay");
				$(".txt-" + (i - 1)).addClass("txt-" + (i - 1) + "-lay");
			}
		}
	})
</script>

</html>
