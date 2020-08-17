$(function(){
	//비밀번호 확인
	$('#inputRepassword').blur(function(){
	   if($('#inputPassword').val() != $('#inputRepassword').val()){
	    	if($('#inputRepassword').val()!=''){
		    alert("비밀번호가 일치하지 않습니다.");
	    	    $('#inputRepassword').val('');
	          $('#inputRepassword').focus();
	       }
	    }
	})  	   
});