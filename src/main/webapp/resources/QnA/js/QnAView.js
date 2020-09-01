function boardDelete(){	
	var chk = confirm("정말 삭제하시겠습니까?");
	if (chk) {
		location.href="/qna/QnADelete?qnaNum=${result.qnaNum }";
			}
						}	
function QnAUpdate(){
	
	location.href = "/qna/QnAUpdate?qnaNum=${result.qnaNum }";
}