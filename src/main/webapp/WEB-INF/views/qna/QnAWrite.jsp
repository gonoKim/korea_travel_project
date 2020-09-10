<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/jstlHeader.jsp"%>

<!DOCTYPE html>
<html>
	<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>QnAWrite</title>
    
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
	<script src="${pageContext.request.contextPath}/resources/QnA/js/QnAWrite.js"></script>
</head>

<body class="container-md vh-100 ">
	<article class="container row justify-content-center align-items-center">
		<div class="col-sm-6 col-md-offset-3 ">
			<form>
				<div class=" text-center text-dark pt-5 ">
					<h2 class="my-3">QnA-write</h2>
				</div>

				<h4 class="my-3">Subject</h4>
				<input type="text" class="form-control text-dark" id="subject" placeholder="제목을 입력해 주세요">

				<h4 class="my-3">Writer</h4>
				<input type="text" class="form-control text-dark" id="writer" placeholder="작성자를 입력해 주세요">

				<h4 class="my-3">Content</h4>
				<textarea rows="10" cols="20" class="form-control text-dark" id="content" placeholder="내용를 입력해 주세요"></textarea>

				<div class="row justify-content-center my-4">
					<button type="reset" id="join-submit" class="btn">
						Reset<i class="fa fa-check spaceLeft"></i>
					</button>
					<input type="button" value="Write" class="btn" onclick="boardValidation()" /> <input type="button" value="Cancel"
						class="btn" onclick="javascript:location.href='QnABoard'" />
				</div>
			</form>
		</div>
	</article>
	
	<jsp:include page="../inc/bottom.jsp" />
	
</body>
</html>