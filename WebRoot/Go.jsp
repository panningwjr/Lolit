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
		<img src="images/chrome_logo.png" alt="" style="display: none;" /><img
			src="images/firefox_logo.png" alt="" style="display: none;" /><img
			src="images/opera_logo.png" alt="" style="display: none;" /><img
			src="images/liebao_logo.png" alt="" style="display: none;" /><img
			src="images/ie10_logo.png" alt="" style="display: none;" />
	</div>
	<div class="go_panel">

		<img src="images/lolit.png" width="210px">
		<object>
			<param name="wmode" value="Opaque">
			<embed src="images/welcome/loading.swf"
				type="application/x-shockwave-flash"></embed>
		</object>
		<div class="go_ps1" id="go_ps1" style="display: none;">
			<div>
				公益提示：您的浏览器版本过低，已经严重影响上网速度，为了您更好的上网体验<br />我们建议您切换到浏览器的高速模式
				或使用上面推荐的浏览器
			</div>
			<button class="go_ignore_bt">
				忽略<br />并直接报名
			</button>
		</div>
		<div>
</body>

<script src="<%=request.getContextPath()%>/js/global.js"></script>
<script src="<%=request.getContextPath()%>/js/jquery-1.7.1.min.js"></script>

<script type="text/javascript">
	window.onload = function() {
		setTimeout("goWebsite()", 3500);
	};

	$(document).ready(function() {
		setTimeout("go_psFageIn()", 3500);
		setTimeout("logoFageIn(1)", 7500);
		setTimeout("logoFageIn(2)", 8000);
		setTimeout("logoFageIn(3)", 8500);
		setTimeout("logoFageIn(4)", 9000);
		setTimeout("logoFageIn(5)", 9500);
	});
	
	function logoFageIn(n) {
		$(".broswer_logo img:nth-child(" + n + ")").fadeIn(3000);
	}
	function go_psFageIn() {
		$("#go_ps1").fadeIn(1000);
	}
</script>

</html>
