function boardDelete(){	
	var chk = confirm("정말 삭제하시겠습니까?");
	if (chk) {
		location.href="/qna/QnADelete?QnA_Num=${result.qnA_Num }";
			}
						}	
function QnAUpdate(){
	
	location.href = "/qna/QnAUpdate?QnA_Num=${result.qnA_Num }";
}