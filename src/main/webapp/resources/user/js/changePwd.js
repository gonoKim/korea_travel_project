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
		var pw = $("#inputPassword").val();
		var pw2 = $("#inputRepassword").val();
		var num = pw.search(/[0-9]/g);
	    var eng = pw.search(/[a-z]/ig);
	    var spe = pw.search(/[`~!@@#$%^&*|₩₩₩'₩";:₩/?]/gi);
	
		if(pw.length < 8 || pw.length > 20){
        	alert("パスワードは  8  文字以上にする必要があります。");
        	return false;
	    } else if(pw.search(/\s/) != -1){
	        alert("パスワードをスペースなしで入力してください。");
	        return false;
    	} else if(num < 0 || eng < 0 || spe < 0){
	        alert("パスワードの最初の  8  文字以内に、数字と特殊文字が少なくとも  1  つ必要です。");
	        return false;
    	} else if(pw != pw2){
			alert("パスワードが一致しません。");
			return false;
		}
		
	})
});
