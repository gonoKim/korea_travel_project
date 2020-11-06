$(function(){
	//비밀번호 확인
	$('#inputRepassword').blur(function(){
	   if($('#inputPassword').val() != $('#inputRepassword').val()){
	    	if($('#inputRepassword').val()!=''){
		    alert("Passwords do not match");
	    	    $('#inputRepassword').val('');
	          $('#inputRepassword').focus();
	       }
	    }
	})
	
	// 중복확인 버튼 확인, 비밀번호 제약 확인
	$("#submit").on("click", function(){
		var idChkVal = $("#idChk").val();
		var phoneChkVal = $("#phoneChk").val();
		var pw = $("#inputPassword").val();
		var pw2 = $("#inputRepassword").val();
		var num = pw.search(/[0-9]/g);
	    var eng = pw.search(/[a-z]/ig);
	    var spe = pw.search(/[`~!@@#$%^&*|₩₩₩'₩";:₩/?]/gi);
	
		if(idChkVal == "N" ){
			alert("メールチェックボタンを押してください。");
			return false;
		} else if(phoneChkVal == "N"){
			alert("電話番号確認ボタンを押してください。");
			return false;
		} else if(pw.length < 8 || pw.length > 20){
        	alert("パスワードは 8 文字以上にする必要があります。");
        	return false;
	    } else if(pw.search(/\s/) != -1){
	        alert("パスワードをスペースなしで入力してください。");
	        return false;
    	} else if(num < 0 || eng < 0 || spe < 0){
	        alert("パスワードの最初の 8 文字には、少なくとも 1 つの数字と特殊文字が必要です。");
	        return false;
    	} else if(pw != pw2){
			alert("パスワードが一致しません。");
			return false;
		}
		
		$.ajax({
			url : "/user/idChk",
			type : "POST",
			dataType : "json",
			data : {"m_Id" : $("#inputEmail").val()},
			success : function(data){
				if(data == 1){
					alert("重複IDです。 もう一度入力してください。");
				}
			}
		})
		
		$.ajax({
			url : "/user/phoneChk",
			type : "POST",
			dataType : "json",
			data : {"m_Phone" : $("#inputTel").val()},
			success : function(data){
				if(data == 1){
					alert("電話番号は既に使用中です。");
				}
			}
		})
		
	})
});

// 년도, 일 글자수 제한
function maxLengthCheck(object){
	if (object.value.length > object.maxLength){
    	object.value = object.value.slice(0, object.maxLength);
	}
}

// 아이디 중복 확인 체크
function fn_idChk(){
	var reg_email = /^([0-9a-zA-Z_\.-]+)@([0-9a-zA-Z_-]+)(\.[0-9a-zA-Z_-]+){1,2}$/;
	var id = $("#inputEmail").val();
	
	// 이메일 주소 형식 확인
 	if(!reg_email.test(id)) {
		alert("正しいメールアドレスを入力してください。");
  		return false;
    }

	$.ajax({
		url : "/user/idChk",
		type : "POST",
		dataType : "json",
		data : {"m_Id" : $("#inputEmail").val()},
		success : function(data){
			if(data == 1){
				alert("重複IDです。 もう一度入力してください。");
			}else if(data == 0){
				$("#idChk").attr("value", "Y");
				alert("この  ID  は利用可能です。");
			}
		}
	})
}

// 전화번호 중복 확인 체크
function phonChk(){
	$.ajax({
		url : "/user/phoneChk",
		type : "POST",
		dataType : "json",
		data : {"m_Phone" : $("#inputTel").val()},
		success : function(data){
			if(data == 1){
				alert("この電話番号は既に使用中です。");
			}else if(data == 0){
				$("#phoneChk").attr("value", "Y");
				alert("この電話番号は利用可能です。");
			}
		}
	})
}

// 아이디 공백 방지
function noSpaceForm(obj) {
    var str_space = /\s/;
    if(str_space.exec(obj.value)) {
        alert("この項目には空白は使用できません。");
        obj.focus();
        obj.value = obj.value.replace(' ','');
        return false;
    }
}