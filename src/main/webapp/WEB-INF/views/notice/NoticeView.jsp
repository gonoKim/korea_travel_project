<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/jstlHeader.jsp"%>

<!DOCTYPE html>
<html>
	<head>
    <meta charset="UTF-8">
	<title>NoticeView</title>
	
    <link rel="canonical" href="${pageContext.request.contextPath}/resources/assets/dist/css/bootstrap-4.5.0.min.css">
    <script src="${pageContext.request.contextPath}/resources/assets/dist/js/jquery-3.5.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/assets/dist/js/popper-1.16.0.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/assets/dist/js/bootstrap-4.5.0.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/assets/dist/js/jquery-1.11.3.min.js"></script>

    <!-- Bootstrap core CSS -->
    <link href="${pageContext.request.contextPath}/resources/assets/dist/css/bootstrap.css" rel="stylesheet">
    
    <!-- Custom styles for this template -->
    <link href="${pageContext.request.contextPath}/resources/assets/dist/css/mainCommon.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/assets/dist/css/no-responsive.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/QnA/css/blog.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath}/resources/QnA/css/broad_view.css" rel="stylesheet">
	
	<!-- google font --> 
	<link href="${pageContext.request.contextPath}/resources/QnA/css/font.css" rel="stylesheet">

	<script type="text/javascript">
		function NoticeDelete(){
			var chk = confirm("정말 삭제하시겠습니까?");
			if (chk) {
				location.href = "/notice/NoticeDelete?NB_Num=${result.NB_Num}";
			}
		}
	
		function NoticeUpdate(){
			location.href = "/notice/NoticeUpdate?NB_Num=${result.NB_Num}";
		}
		
		document.addEventListener('keydown', function(event) {
			  if (event.keyCode === 13) {
			    event.preventDefault();
			  };
		}, true);
	</script>
</head>

<body>
	<div class="container">
	
		<jsp:include page="../inc/top.jsp" />

		<form>
			<table class="my-5 table table-bordered">
				<tr>
					<th class="text-center w-25 p-3 qnaTh bg-secondary text-white">Subject</th>
					<td scope="row" class="px-4 qnaTd" colspan="3">${result.NB_Subject}</td>
				</tr>
				<tr>
					<th class="text-center qnaTh bg-secondary text-white">Writer</th>
					<td scope="row" class="px-4 qnaTd">${result.m_Id}</td>
					<th class="text-center qnaTh bg-secondary text-white">Views</th>
					<td scope="row" class="px-4 qnaTd">${result.NB_Views}</td>
				</tr>
				<tr>
					<!-- <th class="text-center qnaTh bg-secondary text-white">Content</th> -->
					<td scope="row" class="px-4 qnaTd" colspan="4">${result.NB_Content}</td>
				</tr>

			</table>

			<div class="row justify-content-center my-4">
				<c:if test="${user.m_Grade == 'admin'}">
					<input type="button" value="Update" class="btn btn-outline-secondary" onclick="NoticeUpdate()" />
					<input type="button" value="Delete" class="btn btn-outline-secondary  mx-3" onclick="NoticeDelete()" />
				</c:if>
				<input type="button" value="List" class="btn btn-outline-secondary" onclick="javascript:location.href='NoticeBoard'" />
			</div>
		</form>
	</div>
	
	<div class="container" id="commentInsert">
		<label for="content" id="comment">comment</label>
		<form name="commentInsertForm">
			<div class="input-group">
				<input type="hidden" name="bno" value="${result.NB_Num}" />
				<input type="hidden" name="M_Id" value="${user.m_Id}" />
				<input type="text" class="form-control" id="c_Content" name="content" maxlength="200" placeholder="내용을 입력하세요.">
				<span class="input-group-btn">
					<input class="btn btn-outline-secondary" type="button" value="Write" onclick="commentInsert()" />
				</span>
			</div>
		</form>
	</div>
	
	<div class="container" id="commentList">
		<div class="commentList"></div>
	</div>

	<%@ include file="NbComment.jsp"%>
	<jsp:include page="../inc/bottom.jsp" />
	
</body>
</html>