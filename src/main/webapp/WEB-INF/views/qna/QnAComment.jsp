<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<script>
	var qnA_Num = '${result.qnA_Num}'; // 게시글 번호
	
	// 댓글 목록 
	function commentList() {
		$.ajax({
			url : '/qnacomment/clist?qnA_Num=${result.qnA_Num}',
			type : 'get',
			data : {
				'qnA_Num' : qnA_Num
			},
			success : function(data) {
				var a = '';
				$.each(
					data,
					function(key, value) {
						a += '<div class="commentArea" style="border-bottom:1px solid darkgray; margin-bottom: 15px;">';
						a += '<div class="commentInfo'+value.qnA_C_Num+'">'
								+ '댓글번호 : '
								+ value.qnA_C_Num;
						a += '<a onclick="commentUpdate('
								+ value.qnA_C_Num + ',\''
								+ value.qnA_C_Content
								+ '\');"> 수정 </a>';
						a += '<a onclick="commentDelete('
								+ value.qnA_C_Num
								+ ');"> 삭제 </a> </div>';
						a += '<div class="commentContent'+value.qnA_C_Num+'"> <p> 내용 : '
								+ value.qnA_C_Content
								+ '</p>';
						a += '</div></div>';
					}
				);
				$(".commentList").html(a);
			},
			error : function() {
				console.log("error");
			}
		});
	}

	function commentInsert() {
		var c_Content = $("#c_Content").val();
		var c_Num = "${result.qnA_Num}";
		
		if (!c_Content) {
			alert("내용 입력은 필수 입니다..");
			$("#c_Content").focus();
			return false;
		} else {
			insertData(c_Content, c_Num);
		}
	}

	// 댓글 등록
	function insertData(c_Con, c_Num) {
		$.ajax({
			url : '/jquery/QnACWrite',
			type : 'post',
			data : {
				qnA_C_Content : c_Con,
				qnA_Num : c_Num
			},
			success : function(data) {
				if (data == 1) {
					alert("댓글 등록이 완료되었습니다.");
					commentList(); 						//댓글 작성 후 댓글 목록 reload
					$('[name=content]').val('');
				} else {
					alert("글 등록 실패");
				}
			},
			error : function() {
				console.log("error");
			}
		});
	}

	// 댓글 수정 - 댓글 내용 출력을 input 폼으로 변경 
	function commentUpdate(qnA_C_Num, qnA_C_Content) {
		var a = '';

		a += '<div class="input-group">';
		a += '<input type="text" class="form-control" name="content_'+qnA_C_Num+'" value="'+qnA_C_Content+'"/>';
		a += '<span class="input-group-btn"><button class="btn btn-default" type="button" onclick="commentUpdateProc('
				+ qnA_C_Num + ');">수정</button> </span>';
		a += '</div>';

		$('.commentContent' + qnA_C_Num).html(a);
	}

	// 댓글 수정
	function commentUpdateProc(qnA_C_Num) {
		var updateContent = $('[name=content_' + qnA_C_Num + ']').val();

		$.ajax({
			url : '/jquery/QnACUpdate',
			type : 'post',
			data : {
				'qnA_C_Content' : updateContent,
				'qnA_C_Num' : qnA_C_Num
			},
			success : function(data) {
				if (data == 1)
					commentList(qnA_Num); //댓글 수정후 목록 출력 
			}
		});
	}

	// 댓글 삭제 
	function commentDelete(qnA_C_Num) {
		var chk = confirm("정말 삭제하시겠습니까?");
		if (chk) {
			$.ajax({
				url : '/qnacomment/QnACDelete',
				type : 'get',
				data : {
					'qnA_C_Num' : qnA_C_Num
				},
				success : function(data) {
					if (data == 1)
						commentList(qnA_Num); //댓글 삭제후 목록 출력 
						location.reload();
				}
			});
		}
	}

	$(document).ready(function() {
		commentList(); //페이지 로딩시 댓글 목록 출력 
	});
</script>