$(function(){
	
	//비밀번호 확인
	$('#newRePwd').blur(function(){
	   if($('#newPwd').val() != $('#newRePwd').val()){
	    	if($('#newRePwd').val()!=''){
		    alert("Passwords do not match");
	    	    $('#newRePwd').val('');
	          $('#newRePwd').focus();
	       }
	    }
	})
	
	// 회원 정보 수정
	$("#submit").on("click", function(){
		var inputEmailVal = $("#inputEmail").val();
		var inputTelVal = $("#inputTel").val();
		var inputFirstNameVal = $("#inputFirstName").val();
		var inputLastNameVal = $("#inputLastName").val();
		var inputYearVal = $("#inputYear").val();
		var inputMonthVal = $("#inputMonth").val();
		var inputDayVal = $("#inputDay").val();
		var inputPasswordVal = $("#inputPassword").val();
		var phoneChkVal = $("#phoneChk").val();
		
		if(!inputTelVal){
			alert("Please enter your phone number.");
			$("#inputTel").focus();
			return false;
		} else if(!inputFirstNameVal){
			alert("Enter First name.");
			$("#inputFirstName").focus();
			return false;
		} else if(!inputLastNameVal){
			alert("Enter Last name.");
			$("#inputLastName").focus();
			return false;
		} else if(!inputYearVal){
			alert("Enter Year.");
			$("#inputYear").focus();
			return false;
		} else if(!inputMonthVal){
			alert("Enter Month.");
			$("#inputMonth").focus();
			return false;
		} else if(!inputDayVal){
			alert("Enter Day.");
			$("#inputDay").focus();
			return false;
		} else if(!inputPasswordVal){
			alert("Enter password.");
			$("#inputPassword").focus();
			return false;
		} else if(phoneChkVal == "N"){
			alert("Please press the Phone number check button.");
			return false;
		}
		
		$.ajax({
			url : "/mypage/phoneChk",
			type : "POST",
			dataType : "json",
			data : {"m_Phone" : $("#inputTel").val()},
			success : function(data){
				if(data == 1){
					$.ajax({
						url : "/mypage/myPagePhoneChk",
						type : "POST",
						dataType : "json",
						data : {
							"m_Id" : $("#inputEmail").val(),
							"m_Phone" : $("#inputTel").val()
						},
						success : function(data){
							if(data == 0){
								alert("Failed! The phone number is already in use.");
							}
						}
					})
				}
			}
		})
	})
})

// 전화번호 중복 확인 체크
function phonChk(){
	$.ajax({
		url : "/mypage/phoneChk",
		type : "POST",
		dataType : "json",
		data : {"m_Phone" : $("#inputTel").val()},
		success : function(data){
			if(data == 1){
				$.ajax({
					url : "/mypage/myPagePhoneChk",
					type : "POST",
					dataType : "json",
					data : {
						"m_Id" : $("#inputEmail").val(),
						"m_Phone" : $("#inputTel").val()
					},
					success : function(data){
						if(data == 1){
							$("#phoneChk").attr("value", "Y");
							alert("This is the phone number that you are currently using.");
						} else if(data == 0){
							alert("The phone number is already in use.");
						}
					}
				})
			} else if(data == 0){
				$("#phoneChk").attr("value", "Y");
				alert("This phone numbers is available.");
			}
		}
	})
}

// 년도, 일 글자수 제한
function maxLengthCheck(object){
	if (object.value.length > object.maxLength){
    	object.value = object.value.slice(0, object.maxLength);
	}   
} 

// 비밀번호 변경
function modPwdValidation(){
	var id = $("#inputEmail2").val();	
	var pw = $("#inputPassword2").val();
	var newPwd = $("#newPwd").val();
	var newRePwd = $("#newRePwd").val();
	var num = newPwd.search(/[0-9]/g);
    var eng = newPwd.search(/[a-z]/ig);
    var spe = newPwd.search(/[`~!@@#$%^&*|₩₩₩'₩";:₩/?]/gi);	
	
	if(newPwd.length < 8 || newPwd.length > 20){
    	alert("The password must be a minimum of 8 characters.");
    	return false;
    } else if(newPwd.search(/\s/) != -1){
        alert("Please enter your password without spaces.");
        return false;
	} else if(num < 0 || eng < 0 || spe < 0){
        alert("You must have at least one number and a special character within the first 8 characters of your password.");
        return false;
	} else if(newPwd != newRePwd){
		alert("Passwords do not match.");
		return false;
	} else {
		modPwd(id, pw, newPwd, newRePwd);
	}
}

	function modPwd(id, pw, newPwd, newRePwd){
		$.ajax({
			url : "/mypage/modPwd",
			type:'POST',
			data : {
				M_Id    : id,
				M_Pw 	: pw,
				newPwd : newPwd,
				newRePwd : newRePwd
			},
			success:function(data){
				if(data == 1){
					alert("Password change complete.");
					location.href="/mypage/myPage";
				} else {
					alert("The current password does not match.");
				}
			}
		})
	}

// 회원 탈퇴
function delUserValidation(){
	var id = $("#inputEmail3").val();
	var pw = $("#inputPassword3").val();
	
	if(!pw){
		alert("Enter password.");
		$("#inputPassword3").focus();
		return false;
	} else {
		chk=confirm("Are you sure you want to withdraw your membership?");
		if(chk==true){
			delUser(id, pw);
		} else{
			location.href="/mypage/myPage";
		}
	}
}

	function delUser(id, pw){
		$.ajax({
			url : "/mypage/delUser",
			type:'POST',
			data : {
				M_Id    : id,
				M_Pw 	: pw
			},
			success:function(data){
				if(data == 1){
					alert("Membership withdrawal completed.");
					location.href="../main/main";
				} else {
					alert("Wrong password.");
				}
			}
		})
	}


$(window).on('resize', function() {
    if($(window).width() < 992) {
        $('.mPost ul').addClass('pagination-sm');
    } else{
        $('.mPost ul').removeClass('pagination-sm');
    }

    if($(window).width() < 768) {
        $('.mPosttbl th:first-child').removeClass('col-1');
        $('.mPosttbl th:nth-child(2)').removeClass('col-8');
        $('.mPosttbl th:nth-child(3)').removeClass('col-2');
        $('.mPosttbl th:nth-child(4)').removeClass('col-1');

        $('.mPosttbl td:first-child').removeClass('col-1');
        $('.mPosttbl td:nth-child(2)').removeClass('col-8');
        $('.mPosttbl td:nth-child(3)').removeClass('col-2');
        $('.mPosttbl td:nth-child(4)').removeClass('col-1');

        $('.mPosttbl th:first-child').addClass('col-2');
        $('.mPosttbl th:nth-child(2)').addClass('col-5');
        $('.mPosttbl th:nth-child(3)').addClass('col-3');
        $('.mPosttbl th:nth-child(4)').addClass('col-2');

        $('.mPosttbl td:first-child').addClass('col-2');
        $('.mPosttbl td:nth-child(2)').addClass('col-5');
        $('.mPosttbl td:nth-child(3)').addClass('col-3');
        $('.mPosttbl td:nth-child(4)').addClass('col-2');

        $('.mComment ul').addClass('pagination-sm');
    } else{
        $('.mPosttbl th:first-child').removeClass('col-2');
        $('.mPosttbl th:nth-child(2)').removeClass('col-5');
        $('.mPosttbl th:nth-child(3)').removeClass('col-3');
        $('.mPosttbl th:nth-child(4)').removeClass('col-2');

        $('.mPosttbl td:first-child').removeClass('col-2');
        $('.mPosttbl td:nth-child(2)').removeClass('col-5');
        $('.mPosttbl td:nth-child(3)').removeClass('col-3');
        $('.mPosttbl td:nth-child(4)').removeClass('col-2');

        $('.mPosttbl th:first-child').addClass('col-1');
        $('.mPosttbl th:nth-child(2)').addClass('col-8');
        $('.mPosttbl th:nth-child(3)').addClass('col-2');
        $('.mPosttbl th:nth-child(4)').addClass('col-1');

        $('.mPosttbl td:first-child').addClass('col-1');
        $('.mPosttbl td:nth-child(2)').addClass('col-8');
        $('.mPosttbl td:nth-child(3)').addClass('col-2');
        $('.mPosttbl td:nth-child(4)').addClass('col-1');

        $('.mComment ul').removeClass('pagination-sm');
    }
})