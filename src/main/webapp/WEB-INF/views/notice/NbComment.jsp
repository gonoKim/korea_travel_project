<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
	<!-- google font --> 
	<link href="${pageContext.request.contextPath}/resources/QnA/css/font.css" rel="stylesheet">
<script>
	var nb_Num = '${result.NB_Num}'; // 게시글 번호
	
	// 댓글 목록 
	function commentList() {
		var m_Id = "${user.m_Id}";				// 로그인 이용자
		var m_Id2 = "${result.m_Id}";			// 작성자
		var grade = "${user.m_Grade}";

		$.ajax({
			url : '/nbcomment/clist?nB_Num=${result.NB_Num}',
			type : 'get',
			data : {
				'nb_Num' : nb_Num
			},
			success : function(data) {
				var a = '';
				$.each(
					data,
					function(key, value) {
						a += '<div class="commentArea" style="border-bottom:1px solid darkgray; margin-bottom: 15px;">';
						a += '<div class="commentInfo float-md-right">'
						if(m_Id == value.m_Id){
							a += '<a class="btn btn-sm" onclick="commentUpdate('+ value.nb_C_Num +',\''+ value.nb_C_Content +'\');"> 修整 </a>';
							a += '<a class="btn btn-sm" onclick="commentDelete('+ value.nb_C_Num +');"> 削除 </a> </div>';
						} else if(m_Id == m_Id2 || grade == 'admin'){
							a += '<a class="btn btn-sm" onclick="commentDelete('+ value.nb_C_Num +');"> 削除 </a> </div>';
						} else{
							a += '</div>';
						}
						a += '<div class="commentContent'+value.nb_C_Num+'"> '+ value.m_Id + '<p> 内容 : '+ value.nb_C_Content+ '</p>';
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
		var c_Num = "${result.NB_Num}";
		var m_Id = "${user.m_Id}";
		
		if (!c_Content) {
			alert("内容の入力は必須です。");
			$("#c_Content").focus();
			return false;
		} else if(m_Id == ''){
			alert("ログイン後、コメントの入力が可能です。");
		} else {
			insertData(c_Content, c_Num, m_Id);
		}
	}
	
	// 댓글 등록
	function insertData(c_Con, c_Num, m_Id) {
		$.ajax({
			url : '/jquery/NbCWrite',
			type : 'post',
			data : {
				nb_C_Content : c_Con,
				nb_Num : c_Num,
				m_Id : m_Id
			},
			success : function(data) {
				if (data == 1) {
					alert("コメント登録が完了しました");
					commentList(); 						//댓글 작성 후 댓글 목록 reload
					$('[name=content]').val('');
				} else {
					alert("書き込み登録失敗");
				}
			},
			error : function() {
				console.log("error");
			}
		});
	}

	// 댓글 수정 - 댓글 내용 출력을 input 폼으로 변경 
	function commentUpdate(nb_C_Num, nb_C_Content) {
		var a = '';

		a += '<div class="input-group">';
		a += '<input type="text" class="form-control" maxlength="200" name="content_'+nb_C_Num+'" value="'+nb_C_Content+'"/>';
		a += '<span class="input-group-btn"><button class="btn btn-default" type="button" onclick="commentUpdateProc('
				+ nb_C_Num +');">修整</button> </span>';
		a += '</div>';

		$('.commentContent' + nb_C_Num).html(a);
	}

	// 댓글 수정
	function commentUpdateProc(nb_C_Num) {
		var updateContent = $('[name=content_' + nb_C_Num + ']').val();

		$.ajax({
			url : '/jquery/NbCUpdate',
			type : 'post',
			data : {
				'nb_C_Content' : updateContent,
				'nb_C_Num' : nb_C_Num
			},
			success : function(data) {
				if (data == 1){
					commentList(nb_Num); 		//댓글 수정후 목록 출력
				}
			} 
		});
	}

	// 댓글 삭제 
	function commentDelete(nb_C_Num) {
		var chk = confirm("本当に削除しますか？");
		if (chk) {
			$.ajax({
				url : '/nbcomment/NbCDelete',
				type : 'get',
				data : {
					'nb_C_Num' : nb_C_Num
				},
				success : function(data) {
					if (data == 1){
					} else{
						commentList(nb_Num);   //댓글 삭제후 목록 출력
					}
				}
			});
		}
	}

	$(document).ready(function() {
		commentList(); //페이지 로딩시 댓글 목록 출력 
	});
</script>