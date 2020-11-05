function noticeValidation() {
	var subject = $("#subject").val();
	var content = $("#content").val();
	var writer 	= $("#writer").val();

	if (!subject) {
		alert("タイトルの入力は必須です。");
		$("#subject").focus();
		return false;
	} else if(!writer){
		alert("작성자 입력은 필수 입니다.");
		$("#writer").focus();
		return false;
	} else if (!content) {
		alert("内容の入力は必須です。");
		$("#content").focus();
		return false;
	} else {
		NoticeWrite(subject, writer, content);
	}
}

function NoticeWrite(sub, wri, con) {
	$.ajax({
		url : "/jquery/NoticeWrite",
		type : 'POST',
		data : {
			NB_Subject : sub,
			m_Id	   : wri,
			NB_Content : con
		},
		success : function(data) {
			if (data == 1){
				alert("掲示物登録が完了しました。");
				location.href = "/notice/NoticeBoard";
			} else{
				alert("掲示物登録に失敗しました。");
			}
		}, error:function() {
			console.log("error");
		}
	})
}