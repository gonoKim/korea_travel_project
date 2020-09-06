<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/jstlHeader.jsp"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>NoticeUpdate</title>
<link rel="stylesheet"
	href="../../../resources/assets/dist/css/bootstrap-4.5.0.min.css">
<link rel="stylesheet"
	href="../../../resources/assets/dist/css/area.css">
<link rel="stylesheet"
	href="../../../resources/assets/dist/css/blog.css">
<script src="../../../resources/assets/dist/js/jquery-3.5.1.min.js"></script>
<script src="../../../resources/assets/dist/js/popper-1.16.0.min.js"></script>
<script src="../../../resources/assets/dist/js/bootstrap-4.5.0.min.js"></script>
<script src="../../../resources/assets/dist/js/jquery-1.11.3.min.js"></script>

<!--QnA 커스텀 css, js  -->
<link rel="stylesheet" href="../../../resources/QnA/css/broad.css">
<!--로컬 js 오류남  -->
<!--  <script src="../../../resources/QnA/js/jquery.min.js"></script> -->
<!-- <script src="../../../resources/QnA/js/QnAwrite.js"></script> -->

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript">
	function updateValidation() {
		var u_subject = $("#u_subject").val();
		var u_content = $("#u_content").val();
		var u_num = ${result.NB_Num};
		if (!u_subject) {
			alert("제목 입력은 필수입니다.");
			$("#u_subject").focus();
			return false;
		} else if (!u_content) {
			alert("내용 입력은 필수 입니다.");
			$("#u_content").focus();
			return false;
		} else {
			NoticeUpdate(u_num, u_subject, u_content);
		}
	}

	function NoticeUpdate(u_num, u_sub, u_con) {
		$.ajax({
				url : "/jquery2/NoticeUpdate",
				type : 'POST',
				data : {
					NB_Num : u_num,
					NB_Subject : u_sub,
					NB_Content : u_con
				},
				success : function(data) {
					if (data == 1) {
						alert("글 수정이 완료되었습니다.");
						location.href = "/notice/NoticeView?NB_Num=${result.NB_Num }";
					} else {
						alert("글 수정 실패");
					}
				},
				error : function() {
					console.log("error");
				}
		})
	}
</script>
</head>
<body class="container-md vh-100 ">

	<article class="container row justify-content-center align-items-center">
		<div class="col-sm-6 col-md-offset-3 ">
			<form>
				<div class=" text-center text-dark pt-5 ">
					<h2 class="my-3">Notice-update</h2>
				</div>
				<h4 class="my-3">Subject</h4>
				<input type="text" class="form-control text-dark" id="u_subject"
					value="${result.NB_Subject }">
				<h4 class="my-3">Content</h4>
				<textarea rows="10" cols="20" class="form-control text-dark"
					id="u_content" placeholder="">${result.NB_Content }</textarea>
					
				<div class="row justify-content-center my-4">
					<input type="button" value="Update" class="btn" onclick="updateValidation()" />
					<input type="button" value="Cancel" class="btn"
						onclick="javascript:location.href='/qna/NoticeView?NB_Num=${result.NB_Num }'" />
				</div>
			</form>
		</div>
	</article>
	
	<jsp:include page="../inc/bottom.jsp" />
	<!-- //공통 푸터 -->
</body>
</html>