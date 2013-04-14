// 浏览器支持
//--------------------------------------------------------------------
function browserInfo() {
	alert(navigator.userAgent.indexOf("MSIE 10.0") > 0 ? 'IE10'
			: 'other version');
	alert(navigator.userAgent);
}

function goWebsite() {
	var ieVer = 0;
	ieVer = navigator.userAgent.indexOf("MSIE 9.0") > 0 ? 9 : ieVer;
	ieVer = navigator.userAgent.indexOf("MSIE 8.0") > 0 ? 8 : ieVer;
	ieVer = navigator.userAgent.indexOf("MSIE 7.0") > 0 ? 7 : ieVer;
	ieVer = navigator.userAgent.indexOf("MSIE 6.0") > 0 ? 6 : ieVer;
	switch (ieVer) {
	case 0:
		window.location.href = "/Lolit/";
		break;
	case 6:
	case 7:
	case 8:
	case 9:
		alert(ieVer);
		break;
	default:
		break;
	}
}

// screen
// --------------------------------------------------------------------
function bgWidth() {
	var bodyWidth = document.body.clientWidth;
	var bgdiv = document.getElementById("panel_div");
	if (bodyWidth > 1366) {
		bgdiv.style.left = (bodyWidth - 1366) / 2 + "px";
	}
}

// UI
// --------------------------------------------------------------------
// 抽签页交互
var tBox;
function chooseTeam(tId) {
	// 队伍格子样式变化
	if (tBox != null) {
		tBox.className = "team_st_box shadow_a";
	}
	tBox = document.getElementById(tId);
	tBox.className = "team_st_box3 shadow_a";
	// 密码输入可见
	var lotPanel = document.getElementById("lot_panel");
	lotPanel.innerHTML = '<form action="frontend/teamRegist/DoLot" method="post" class="lot_form"><img alt="" src="/Lolit/images/bg_main.jpg" class="shadow_a"><label></label><input type="text" id="tId" name="tId" hidden="true" required> <input type="password" id="tPwd" name="tPwd" class="shadow_a" placeholder="队伍口令" required><button type="submit" class="shadow_a">抽签</button></form>';
	// 记录tId
	var tIdInput = document.getElementById("tId");
	tIdInput.value = tId;
}

// form
// --------------------------------------------------------------------

// 上传LOGO时预览
function viewLogo(file) {
	var viewFiles = document.getElementById("tLogo");
	var viewImg = document.getElementById("tLogoView");

	// 通过file.size可以取得图片大小
	var reader = new FileReader();
	reader.onload = function(evt) {
		viewImg.src = evt.target.result;
		viewImg.className = "img_view shadow_a";
	}
	reader.readAsDataURL(file);
}

// 是否使用自己LOGO
var logoFlag = 0;
function usetLogo(flag) {

	var ps = document.getElementById("tlogo_ps");
	var b1 = document.getElementById("de_logo");
	var b2 = document.getElementById("self_logo");
	var viewImg = document.getElementById("tLogoView");

	if (flag == "self") {
		ps.innerHTML = '<input type="file" id="tLogo" name="tLogo" onchange="viewLogo(this.files[0])">';
		viewImg.src = "#";
		viewImg.className = "img_view";
		b1.className = "unchoose_logo shadow_a";
		b2.className = "choose_logo";
		logoFlag = 1;
	} else if (flag == "de") {
		ps.innerHTML = '这里需要您选择代表队伍的Logo，如您不自行上传，赛组委将默认为您定制以您队伍名为主体的个性Logo。';
		viewImg.src = "/Lolit/images/bg_main.jpg";
		viewImg.className = "img_view shadow_a";
		b2.className = "unchoose_logo shadow_a";
		b1.className = "choose_logo";
		logoFlag = 0;
	}
}
// tLogo验证
// 如果自定义则使用update 默认则不使用update
// img.src不能为#
function checktLogo() {
	var form = document.getElementById("TLogoUpload");
	if (logoFlag == 1) {
		form.action = "frontend/teamRegist/TLogoUpload"
	} else {
		form.action = "";
	}
}

// 0级赛
function tZero_check() {
	var t = document.getElementById("tZero_label").innerHTML;
	if (t == "愿意") {
		document.getElementById("tZero_label").innerHTML = "不愿意";
	} else if (t == "不愿意") {
		document.getElementById("tZero_label").innerHTML = "愿意";
	}
}

// 性别
function pGender_check(i) {
	var t = document.getElementById("pGender" + i + "_label").innerHTML;
	if (t == "男") {
		document.getElementById("pGender" + i + "_label").innerHTML = "女";
	} else if (t == "女") {
		document.getElementById("pGender" + i + "_label").innerHTML = "男";
	}
}

// 替补
function useBench(i) {
	var t = document.getElementById('pBench' + i);
	if (t.checked == true) {
		if (i == 6) {
			document.getElementById('pBench7').disabled = false;
		}
		document.getElementById('pId' + i).disabled = false;
		document.getElementById('pName' + i).disabled = false;
		document.getElementById('pGender' + i).disabled = false;
		document.getElementById('pId' + i).disabled = false;
		document.getElementById('pBuilding' + i).disabled = false;
		document.getElementById('pRoom' + i).disabled = false;
		document.getElementById('pLolExp' + i).disabled = false;
		document.getElementById('pServer' + i).disabled = false;
		document.getElementById('pWin' + i).disabled = false;
	} else if (t.checked == false) {
		if (i == 6) {
			document.getElementById('pBench7').disabled = true;
		}
		document.getElementById('pId' + i).disabled = true;
		document.getElementById('pName' + i).disabled = true;
		document.getElementById('pGender' + i).disabled = true;
		document.getElementById('pId' + i).disabled = true;
		document.getElementById('pBuilding' + i).disabled = true;
		document.getElementById('pRoom' + i).disabled = true;
		document.getElementById('pLolExp' + i).disabled = true;
		document.getElementById('pServer' + i).disabled = true;
		document.getElementById('pWin' + i).disabled = true;
	}
}

// tools
// --------------------------------------------------------------------
function returnPage() {
	history.back();
}