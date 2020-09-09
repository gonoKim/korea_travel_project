function boardValidation(){
	
	var subject = $("#subject").val();
	var content = $("#content").val();
	var writer 	= $("#writer").val();
	
	if(!subject){
		alert("제목 입력은 필수입니다.");
		$("#subject").focus();
		return false;
	}else if(!writer){
		alert("작성자 입력은 필수 입니다.");
		$("#writer").focus();
		return false;
	}else if(!content){
		alert("내용 입력은 필수 입니다.");
		$("#content").focus();
		return false;
	}else {
		QnAWrite(subject,writer,content);
	}
	
}

function QnAWrite(sub,wir,con){
	
	$.ajax({
		
		url : "/jquery/QnAWrite",
		type:'POST',
		data : {
			qnA_Subject : sub,
			qnA_Write 	: wir,
			qnA_Content : con
		},
		success:function(data){
			if(data == 1){
				alert("글 등록이 완료되었습니다.");
				location.href="/qna/QnABoard";
			}else {
				alert("글 등록 실패");
			}
		},error:function(){
			console.log("error");
		}
		
	})
	
}

