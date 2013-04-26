//team_register_ie
//----------------------------------------------------------------
//tName
function tNameCheck() {
	var tName = document.getElementById('tName');
	var reg = /^[\u4e00-\u9fa5_a-zA-Z0-9]{2,15}$/;
	if (tName.value == "") {
		document.getElementById('tName_msg').innerHTML = "队伍名不能为空!";
		document.getElementById('tName_msg').style.display = "";
	} else if (!reg.test(tName.value)) {
		document.getElementById('tName_msg').innerHTML = "请输入2-15个中文、英文或符号的字符。";
		document.getElementById('tName_msg').style.display = "";
	} else {
		document.getElementById('tName_msg').innerHTML = "";
		document.getElementById('tName_msg').style.display = "none";
	}
}
// tPwd1
function tPwd1Check() {
	var tPwd1 = document.getElementById('tPwd1');
	var reg = /[a-zA-Z0-9]{6,18}/;
	if (tPwd1.value == "") {
		document.getElementById('tPwd1_msg').innerHTML = "密码不能为空!";
		document.getElementById('tPwd1_msg').style.display = "";
	} else if (!reg.test(tPwd1.value)) {
		document.getElementById('tPwd1_msg').innerHTML = "请按正确格式输入密码!";
		document.getElementById('tPwd1_msg').style.display = "";
	} else {
		document.getElementById('tPwd1_msg').innerHTML = "";
		document.getElementById('tPwd1_msg').style.display = "none";
	}
}
// tPwd2
function tPwd2Check() {
	var tPwd1 = document.getElementById('tPwd1');
	var tPwd2 = document.getElementById('tPwd2');
	var reg = /[a-zA-Z0-9]{6,18}/;
	if (tPwd2.value == "" || tPwd1.value != tPwd2.value || !reg.test('tPwd1')) {
		document.getElementById('tPwd2_msg').innerHTML = "两次密码不一样!";
		document.getElementById('tPwd2_msg').style.display = "";
	} else {
		document.getElementById('tPwd2_msg').innerHTML = "";
		document.getElementById('tPwd2_msg').style.display = "none";
	}
}
// pWin1
function pWin1Check() {
	var pWin1 = document.getElementById('pWin1');
	var reg = /^\d{1,4}$/;
	if (pWin1.value == "") {
		document.getElementById('pWin1_msg').innerHTML = "请输入胜场次数!";
		document.getElementById('pWin1_msg').style.display = "";
	} else if (!reg.test(pWin1.value)) {
		document.getElementById('pWin1_msg').innerHTML = "胜场应在0-9999之间。";
		document.getElementById('pWin1_msg').style.display = "";
	} else {
		document.getElementById('pWin1_msg').innerHTML = "";
		document.getElementById('pWin1_msg').style.display = "none";
	}
}
// pId
function pIdCheck() {
	for ( var i = 1; i < 8; i++) {
		// pId
		var pId = document.getElementById('pId' + i);
		var reg = /^[0|1]\d{9}$/;
		if (pId.value == "") {
			document.getElementById('pId_msg' + i).innerHTML = "此项不能为空";
			document.getElementById('pId_msg' + i).style.display = "";
		} else if (!reg.test(pId.value)) {
			document.getElementById('pId_msg' + i).innerHTML = "请输入正确格式的学号。";
			document.getElementById('pId_msg' + i).style.display = "";
		} else {
			document.getElementById('pId_msg' + i).innerHTML = "";
			document.getElementById('pId_msg' + i).style.display = "none";
		}
	}
}
// pName
function pNameCheck() {
	for ( var i = 1; i < 8; i++) {
		var pName = document.getElementById('pName' + i);
		var reg = /^[\u4E00-\u9FA5]{2,5}$/;
		if (pName.value == "") {
			document.getElementById('pName_msg' + i).innerHTML = "此项不能为空。";
			document.getElementById('pName_msg' + i).style.display = "";
		} else if (!reg.test(pName.value)) {
			document.getElementById('pName_msg' + i).innerHTML = "名字啊！";
			document.getElementById('pName_msg' + i).style.display = "";
		} else {
			document.getElementById('pName_msg' + i).innerHTML = "";
			document.getElementById('pName_msg' + i).style.display = "none";
		}
	}
}
// tPhone
function tPhoneCheck() {
	var tPhone = document.getElementById('tPhone');
	var reg = /^1[3|4|5|8][0-9]\d{8}$/;
	if (tPhone.value == "") {
		document.getElementById('tPhone_msg').innerHTML = "此项不能为空。";
		document.getElementById('tPhone_msg').style.display = "";
	} else if (!reg.test(tPhone.value)) {
		document.getElementById('tPhone_msg').innerHTML = "请输入正确格式的手机号码。";
		document.getElementById('tPhone_msg').style.display = "";
	} else {
		document.getElementById('tPhone_msg').innerHTML = "";
		document.getElementById('tPhone_msg').style.display = "none";
	}
}