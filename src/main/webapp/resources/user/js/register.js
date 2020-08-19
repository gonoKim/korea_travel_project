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
		var id = $("#inputEmail").val();
		var pw = $("#inputPassword").val();
		var pw2 = $("#inputRepassword").val();
		var num = pw.search(/[0-9]/g);
	    var eng = pw.search(/[a-z]/ig);
	    var spe = pw.search(/[`~!@@#$%^&*|₩₩₩'₩";:₩/?]/gi);
	
		if(idChkVal == "N"){
			alert("Please press the check button.");
			return false;
		} else if(id.search(/\s/) != -1){
	        alert("Please enter your email without spaces.");
	        return false;
    	} else if(pw.length < 8 || pw.length > 20){
        	alert("The password must be a minimum of 8 characters.");
        	return false;
	    } else if(pw.search(/\s/) != -1){
	        alert("Please enter your password without spaces.");
	        return false;
    	} else if(num < 0 || eng < 0 || spe < 0){
	        alert("You must have at least one number and a special character within the first 8 characters of your password.");
	        return false;
    	} else if(pw != pw2){
			alert("Passwords do not match.");
			return false;
		}
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
	$.ajax({
		url : "/user/idChk",
		type : "POST",
		dataType : "json",
		data : {"m_Id" : $("#inputEmail").val()},
		success : function(data){
			if(data == 1){
				alert("Duplicate ID, please re-enter.");
			}else if(data == 0){
				$("#idChk").attr("value", "Y");
				alert("This ID is available.");
			}
		}
	})
}

// 아이디 공백 방지
function noSpaceForm(obj) {
    var str_space = /\s/;
    if(str_space.exec(obj.value)) {
        alert("This entry cannot contain spaces.");
        obj.focus();
        obj.value = obj.value.replace(' ','');
        return false;
    }
 // onkeyup="noSpaceForm(this);" onchange="noSpaceForm(this);"
}