<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/jstlHeader.jsp"%>

<!DOCTYPE html>
<html>
	<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>NoticeWrite</title>
	
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
	<script src="${pageContext.request.contextPath}/resources/notice/js/NbWrite.js"></script>
</head>

<body>
	<div class="container">
		<form class="form-signin" id="a">
			<div class=" text-center text-dark pt-5 ">
				<h2 class="my-3">お知らせを書く</h2>
			</div>
			
			<h4 class="my-3">テーマ</h4>
			<input type="text" class="form-control text-dark" id="subject" maxlength="30" placeholder="タイトルを入力してください">
			
			<h4 class="my-3">著者</h4>
			<input type="text" class="form-control text-dark" id="writer" maxlength="12" value="${user.m_Id}" readonly>
			
			<h4 class="my-3">内容</h4>
			<textarea rows="10" cols="20" class="form-control text-dark" maxlength="200" id="content" placeholder="内容を入力してください"></textarea>

			<div class="row justify-content-center my-4">
				<button type="reset" id="join-submit" class="btn">リセット</button>
				<input type="button" value="書く" class="btn" onclick="noticeValidation()" />
				<input type="button" value="キャンセル" class="btn" onclick="javascript:location.href='NoticeBoard'" />
			</div>
		</form>
	</div>

	<jsp:include page="../inc/bottom.jsp" />
	
</body>
</html>