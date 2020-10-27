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
