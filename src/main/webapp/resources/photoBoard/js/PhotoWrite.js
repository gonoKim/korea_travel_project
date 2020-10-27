function boardValidation(){
	var subject = $("#subject").val();
	var content = $("#content").val();

	if(!subject){
		alert("제목 입력은 필수입니다.");
		$("#subject").focus();
		return false;
	}else if(!content){
		alert("내용 입력은 필수 입니다.");
		$("#content").focus();
		return false;
	}else {
		PhotoWrite(subject,content);
	}

}

function PhotoWrite(sub,con){

	$.ajax({
		url : "/jquery/PhotoWrite",
		type:'POST',
		data : {
			Photo_Subject : sub,
			Photo_Content : con
		},
		success:function(data){
			if(data == 1){
				alert("글 등록이 완료되었습니다.");
				location.href="/gallery/PhotoBoard";
			}else {
				alert("글 등록 실패");
			}
		},error:function(){
			console.log("error");
		}
	})

}
