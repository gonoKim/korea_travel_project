<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/jstlHeader.jsp"%>

<!DOCTYPE html>
<html>
	<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>NoticeUpdate</title>

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
			var u_num = ${result.NB_Num};
			
			if(!u_subject){
				alert("タイトルの入力は必須です。");
				$("#u_subject").focus();
				return false;
			} else if(!u_content){
				alert("情報の入力は必須です。");
				$("#u_content").focus();
				return false;
			} else{
				NoticeUpdate(u_num, u_subject, u_content);
			}
		}
	
		function NoticeUpdate(u_num, u_sub, u_con){
			$.ajax({
				url : "/jquery/NoticeUpdate",
				type : 'POST',
				data : {
					NB_Num : u_num,
					NB_Subject : u_sub,
					NB_Content : u_con
				},
				success:function(data){
					if(data == 1){
						alert("文章修正が完了しました。");
						location.href = "/notice/NoticeView?NB_Num=${result.NB_Num}";
					} else{
						alert("修正失敗");
					}
				}, error:function(){
					console.log("error");
				}
			})
		}
	</script>
</head>

<body class="container-md vh-100 ">
	<article class="container row justify-content-center align-items-center">
		<div class="col-sm-6 col-md-offset-3">
			<form>
				<div class=" text-center text-dark pt-5">
					<h2 class="my-3">お知らせ修正</h2>
				</div>
				
				<h4 class="my-3">タイトル</h4>
				<input type="text" class="form-control text-dark" id="u_subject" maxlength="30" value="${result.NB_Subject}">
				
				<h4 class="my-3">著者</h4>
				<input type="text" class="form-control text-dark" id="writer" maxlength="12" placeholder="${result.m_Id}" readonly>
				
				<h4 class="my-3">内容</h4>
				<textarea rows="10" cols="20" class="form-control text-dark" id="u_content" maxlength="200" placeholder="">${result.NB_Content}</textarea>

				<div class="row justify-content-center my-4">
					<input type="button" value="修正" class="btn" onclick="updateValidation()" />
					<input type="button" value="キャンセル" class="btn" onclick="javascript:location.href='/qna/NoticeView?NB_Num=${result.NB_Num}'" />
				</div>
			</form>
		</div>
	</article>
	
	<jsp:include page="../inc/bottom.jsp" />
	
</body>
</html>