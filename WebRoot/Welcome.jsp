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

	<%
		ArrayList<Team> tList = (ArrayList<Team>)request.getAttribute("tList");
	%>

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
				<li class="on" onclick="d(),c(1)">1</li>
				<li onclick="d(),c(4)">2</li>
				<li onclick="d(),c(3)">3</li>
				<li onclick="d(),c(2)">4</li>
			</ul>
		</div>
	</div>

	<section class="wel_apply shadow_b">

		<ul class="wel_ul">
			<li class="wel_li1">竞赛 社交 直播 周边活动等全方位娱乐新体验，工大英雄联盟玩家的狂欢Party！</li>
			<li class="wel_li2">完成3个报名步骤即可获得可选炫酷英雄皮肤！<em>100%</em>！<img
				src="images/stamp.png" class="stamp"></li>
			<li class="wel_li3" onclick="gotoApplyPage()"><object>
					<param name="wmode" value="Opaque">
					<embed src="images/welcome/apply_button.swf" wmode="Opaque"></embed>
				</object>
			</li>
			<img src="images/title1.png" class="apply_bt_ps">
		</ul>
	</section>
	<section class="apply_bg">
		<ul class="wel_ul2">
			<li class="wel_li4">
				<section class="last_apply">
					<div class="wel_mengban">
						<label>队伍名</label><label>代表学院</label><label>报名时间</label>
					</div>
					<ul id="idcontent">
						<%
							for (int i = 0; i < tList.size(); i++) {
																Team team = tList.get(i);
																String date = String.valueOf(team.gettId());
						%>
						<li><label><%=team.gettName()%></label><label><%=team.gettBelonging()%></label><label><%=date.substring(0, 4)%>-<%=date.substring(4, 6)%>-<%=date.substring(6, 8)%></label>
						</li>
						<%
							}
						%>
					</ul>
				</section>
				<section class="last_apply_ps">
					<br> <label><%=request.getAttribute("tListCount")%></label><br> <span>支队伍已经参与报名！</span><br>
					<img src="images/5player.png">
				</section></li>
			<li class="wel_li5"><img src="images/reward1.png">
				<section class="warm_up"></section> <img
				src="images/title2.png" class="tongkuai">
			</li>
			<li style="height: 50px;"></li>
		</ul>
	</section>

</body>

<script src="<%=request.getContextPath()%>/js/global.js"></script>
<script src="<%=request.getContextPath()%>/js/jquery-1.7.1.min.js"></script>

<script type="text/javascript">
	var j = 1;
	var timeoutProcess;
	$(function() {
		c(j);
	});
	function c(i) {
		j = i;
		b(j);
		j--;
		var arr = [ 0, 3, 2, 1, 0 ];
		$(".num li").removeClass("on").eq(arr[j]).addClass("on");
		console.log(j + ":::" + arr[j]);
		timeoutProcess = setTimeout("c(" + j + ")", 7000);
	}
	function d() {
		clearTimeout(timeoutProcess);
		$(".bg-1").removeClass("bg-1-lay");
		$(".bg-2").removeClass("bg-2-lay");
		$(".bg-3").removeClass("bg-3-lay");
		$(".bg-4").removeClass("bg-4-lay");
		$(".pic-1").removeClass("pic-1-lay");
		$(".pic-2").removeClass("pic-2-lay");
		$(".pic-3").removeClass("pic-3-lay");
		$(".pic-4").removeClass("pic-4-lay");
		$(".txt-1").removeClass("txt-1-lay");
		$(".txt-2").removeClass("txt-2-lay");
		$(".txt-3").removeClass("txt-3-lay");
		$(".txt-4").removeClass("txt-4-lay");
	}

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

	//last team
	function $de(id) {
		return typeof id === "string" ? document.getElementById(id) : id;
	}
	(function() {
		var aLi = $de('idcontent').getElementsByTagName('li');
		aLi[aLi.length - 1].className = 'idcontent_hidden';
		aLi[aLi.length - 2].className = 'idcontent_hidden';
		aLi[aLi.length - 3].className = 'idcontent_hidden';
		setInterval(function() {
			var firstLi = aLi[aLi.length - 1];
			var last1 = aLi[aLi.length - 2];
			var last2 = aLi[aLi.length - 3];
			var last3 = aLi[aLi.length - 4];
			$de('idcontent').insertBefore(firstLi, aLi[0]);
			firstLi.className = 'idcontent_chang';
			last1.className = 'idcontent_hidden';
			last2.className = 'idcontent_hidden';
			last3.className = 'idcontent_hidden';
		}, 6000);
	})();
</script>

</html>
