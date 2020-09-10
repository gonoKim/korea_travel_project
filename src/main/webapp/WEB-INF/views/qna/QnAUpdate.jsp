<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/jstlHeader.jsp"%>

<!DOCTYPE html>
<html>
	<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>QnAUpdate</title>
    
    <link rel="canonical" href="${pageContext.request.contextPath}/resources/assets/dist/css/bootstrap-4.5.0.min.css">
    <script src="${pageContext.request.contextPath}/resources/assets/dist/js/jquery-3.5.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/assets/dist/js/popper-1.16.0.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/assets/dist/js/bootstrap-4.5.0.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/assets/dist/js/jquery-1.11.3.min.js"></script>
    
    <!-- Bootstrap core CSS -->
    <link href="${pageContext.request.contextPath}/resources/assets/dist/css/bootstrap.css" rel="stylesheet">

	<!-- Custom styles for this template -->
	<link href="${pageContext.request.contextPath}/resources/assets/dist/css/mainCommon.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath}/resources/QnA/css/blog.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath}/resources/QnA/css/broad.css" rel="stylesheet">
	
	<!-- js -->
	<script src="${pageContext.request.contextPath}/resources/assets/dist/js/jquery-3.4.1.min.js"></script>
	
	<script type="text/javascript">
		function updateValidation(){
			var u_subject = $("#u_subject").val();
			var u_content = $("#u_content").val();
			var u_num = ${result.qnA_Num};
			
			if(!u_subject){
				alert("제목 입력은 필수입니다.");
				$("#u_subject").focus();
				return false;
			}else if(!u_content){
				alert("내용 입력은 필수 입니다.");
				$("#u_content").focus();
				return false;
			}else {
				QnAUpdate(u_num, u_subject, u_content);
			}
		}
		
		function QnAUpdate(u_num, u_sub, u_con){
			$.ajax({
				url : "/jquery/QnAUpdate",
				type:'POST',
				data : {
					qnA_Num 	: u_num,
					qnA_Subject : u_sub,
					qnA_Content : u_con
				},
				success:function(data){
					if(data == 1){
						alert("글 수정이 완료되었습니다.");
						location.href="/qna/QnAView?qnA_Num=${result.qnA_Num}";
					}else {
						alert("글 수정 실패");
					}
				},error:function(){
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
					<h2 class="my-3">QnA-write</h2>
				</div>

				<h4 class="my-3">Subject</h4>
				<input type="text" class="form-control text-dark" id="u_subject" value="${result.qnA_Subject }">

				<h4 class="my-3">Writer</h4>
				<input type="text" class="form-control text-dark" id="writer" readonly placeholder="${result.qnA_Write }">

				<h4 class="my-3">Content</h4>
				<textarea rows="10" cols="20" class="form-control text-dark" id="u_content" placeholder="">${result.qnA_Content }</textarea>

				<div class="row justify-content-center my-4">
					<input type="button" value="Update" class="btn" onclick="updateValidation()" />
					<input type="button" value="Cancel" class="btn" onclick="javascript:location.href='/qna/QnAView?qnA_Num=${result.qnA_Num }'" />
				</div>
			</form>
		</div>
	</article>
	
	<jsp:include page="../inc/bottom.jsp" />
	
</body>
</html>