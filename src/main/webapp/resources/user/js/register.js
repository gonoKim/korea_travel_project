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
	
	// 중복확인 버튼 확인 후 submit 가능
	$("#submit").on("click", function(){
		var idChkVal = $("#idChk").val();
		if(idChkVal == "N"){
			alert("Please press the check button.");
			return false;
		}else if(idChkVal == "Y"){
			$("#regForm").submit();
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