<%@ page language="java" import="java.util.*,vo.*;" pageEncoding="UTF-8"
	contentType="text/html; charset=utf-8"%>
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

<meta charset="utf-8">
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">


<link rel="stylesheet"
	href="<%=request.getContextPath()%>/css/style.css">
</head>

<body
	style="background: url(/Lolit/images/bg_black.png) center top repeat-y;">
	<div class="broswer_logo">
		<img src="images/chrome_logo.png" alt="谷歌浏览器，我们的首席推荐！" style="display: none;"
			onclick="window.open('https://www.google.com/intl/en/chrome/browser/')" /><img
			src="images/liebao_logo.png" alt="猎豹浏览器，值得骄傲的国产浏览器！" style="display: none;"
			onclick="window.open('http://www.liebao.cn/')" /><img
			src="images/firefox_logo.png" alt="火狐浏览器，我想你一定听说过它的大名！" style="display: none;"
			onclick="window.open('http://firefox.com.cn/download/')" /><img
			src="images/opera_logo.png" alt="欧鹏浏览器，不错的选择。" style="display: none;"
			onclick="window.open('http://www.opera.com/computer')" /><img
			src="images/ie10_logo.png" alt="IE10，多处表现惊艳，不再坑爹！" style="display: none;"
			onclick="window.open('http://windows.microsoft.com/zh-cn/internet-explorer/download-ie')" />
	</div>
	<div class="go_panel">

		<img src="images/lolit.png" width="210px"> <object>
				<param name="wmode" value="Opaque">
					<embed src="images/welcome/loading.swf"
						type="application/x-shockwave-flash"></embed>
			</object>
			<div class="go_ps1" id="go_ps1" style="display: none;">
				<div>
					公益提示：您的浏览器版本过低，已经严重影响上网速度，为了您更好的上网体验<br />我们建议您切换到浏览器的<a
						onmouseover="show_bro_mode_ps()" style="color: #999;">高速模式</a>
					或使用上面推荐的浏览器
				</div>
				<button class="go_ignore_bt" onclick="window.location.href = 'Front_End/Team_Apply/team_register_ie.jsp'">
					忽略<br />并直接报名
				</button>
			</div>
			<div>
				<img id="bro_mode_ps" src="images/bro_mode_ps1.jpg"
					style="margin: -20px 0 0 -30px; padding: 30px 0 0 0; position: absolute; display: none;"
					onmouseout="hid_bro_mode_ps()" />
			</div>
</body>

<script src="<%=request.getContextPath()%>/js/global.js"></script>
<script src="<%=request.getContextPath()%>/js/jquery-1.7.1.min.js"></script>

<script type="text/javascript">
	window.onload = function() {
		setTimeout("goWebsite()", 3500);
	};

	$(document).ready(function() {
		setTimeout("go_psFageIn()", 3800);
		setTimeout("logoFageIn(1)", 8000);
		setTimeout("logoFageIn(2)", 8300);
		setTimeout("logoFageIn(3)", 8500);
		setTimeout("logoFageIn(4)", 8700);
		setTimeout("logoFageIn(5)", 9100);
	});

	function logoFageIn(n) {
		$(".broswer_logo img:nth-child(" + n + ")").fadeIn(1200);
	}
	function go_psFageIn() {
		$("#go_ps1").fadeIn(800);
	}

	function show_bro_mode_ps() {
		$("#bro_mode_ps").fadeIn(500);
	}
	function hid_bro_mode_ps() {
		$("#bro_mode_ps").fadeOut(500);
	}
</script>

</html>
