function updateValidation(){
	var M_Id = $("#M_Id").val();
	var M_Phone = $("#M_Phone").val();
	var M_Pw = $("#M_Pw").val();
	if(!M_Phone){
		alert("전화번호를 입력하세요.");
		$("#M_Phone").focus();
		return false;
	}else if(!M_Pw){
		alert("비밀번호를 입력하세요.");
		$("#M_Pw").focus();
		return false;
	}else {
		UserUpdate(M_Id, M_Phone, M_Pw);
	}
}

function UserUpdate(M_Id, M_Phone, M_Pw){
	$.ajax({
		url : "../user/userUpdate",
		type:'POST',
		data : {
			M_Id 	: M_Id,
			M_Phone : M_Phone,
			M_Pw : M_Pw
		},
		success:function(data){
			if(data == 1){
				alert("수정이 완료되었습니다.");
				location.href="/mypage/myPage";
			}else {
				alert("수정 실패");
			}
		},error:function(){
			console.log("error");
		}
	})
}

function modPwdValidation(){
	var M_Id = $("#M_Id2").val();
	var M_Pw = $("#M_Pw2").val();
	var newPwd = $("#newPwd").val();
	var newPwd2 = $("#newPwd2").val();
	if(!M_Pw||!newPwd||!newPwd2){
		alert("입력하지 않은 항목이 있습니다.");
		$("#M_Pw2").focus();
		return false;
	}else {
		modPwd(M_Id, M_Pw, newPwd, newPwd2);
	}
}

function modPwd(M_Id, M_Pw, newPwd, newPwd2){
	$.ajax({
		url : "../user/modPwd",
		type:'POST',
		data : {
			M_Id    : M_Id,
			M_Pw 	: M_Pw,
			newPwd : newPwd,
			newPwd2 : newPwd2
		},
		success:function(data){
			if(data == 1){
				alert("변경이 완료되었습니다.");
				location.href="/mypage/myPage";
			}else {
				alert("변경 실패");
			}
		},error:function(){
			console.log("error");
		}
	})
}

function delUserValidation(){
	var M_Id = $("#M_Id3").val();
	var M_Pw = $("#M_Pw3").val();
	if(!M_Pw){
		alert("비밀번호를 입력하세요.");
		$("#M_Pw3").focus();
		return false;
	}else {
		chk=confirm("정말 탈퇴하시겠습니까?");
		if(chk==true){
			delUser(M_Id, M_Pw);
		}else{
			location.href="/mypage/myPage";
		}
	}
}

function delUser(M_Id, M_Pw){
	$.ajax({
		url : "../user/delUser",
		type:'POST',
		data : {
			M_Id    : M_Id,
			M_Pw 	: M_Pw
		},
		success:function(data){
			if(data == 1){
				alert("탈퇴가 완료되었습니다.");
				location.href="../main/main";
			}else {
				alert("탈퇴 실패");
			}
		},error:function(){
			console.log("error");
		}
	})
}


$(window).on('resize', function() {
    if($(window).width() < 992) {
        $('.mPost ul').addClass('pagination-sm');
    }else{
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
    }else{
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