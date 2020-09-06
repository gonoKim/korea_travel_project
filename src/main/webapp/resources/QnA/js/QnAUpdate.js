function updateValidation(){
	var u_subject = $("#u_subject").val();
	var u_content = $("#u_content").val();
	var u_num	  = "${result.qnaNum}";
	if(!u_subject){
		alert("제목 입력은 필수입니다.");
		$("#u_subject").focus();
		return false;
	}else if(!u_content){
		alert("내용 입력은 필수 입니다.");
		$("#u_content").focus();
		return false;
	}else {
		QnAUpdate(u_num,u_subject,u_content);
	}
	
}

function QnAUpdate(u_num,u_sub,u_con){
	
	$.ajax({
		url : "/jquery/QnAUpdate",
		type:'POST',
		data : {
			qnaNum 	: u_num,
			qnaSubject : u_sub,
			qnaContent : u_con
		},
		success:function(data){
			if(data == 1){
				alert("글 수정이 완료되었습니다.");
				location.href="/qna/QnAView?qnaNum=${result.qnaNum }";
			}else {
				alert("글 수정 실패");
			}
		},error:function(){
			console.log("error");
		}
	})
}
