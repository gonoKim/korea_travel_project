<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/jstlHeader.jsp"%>

<!DOCTYPE html>
<html>
	<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
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
    <link href="${pageContext.request.contextPath}/resources/notice/css/blog.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath}/resources/notice/css/broad_view.css" rel="stylesheet">

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
					<th class="text-center w-25 p-3">Subject:</th>
					<td scope="row">${result.NB_Subject}</td>
				</tr>
				<tr>
					<th class="text-center">Writer:</th>
					<td scope="row">${result.m_Id}</td>
				</tr>
				<tr>
					<th class="text-center">Content:</th>
					<td scope="row">${result.NB_Content}</td>
				</tr>
				<tr>
					<th class="text-center">Views:</th>
					<td scope="row">${result.NB_Views}</td>
				</tr>
			</table>

			<div class="row justify-content-center my-4">
				<c:if test="${user.m_Grade == 'admin'}">
					<input type="button" value="Update" class="btn" onclick="NoticeUpdate()" />
					<input type="button" value="Delete" class="btn" onclick="NoticeDelete()" />
				</c:if>
				<input type="button" value="List" class="btn" onclick="javascript:location.href='NoticeBoard'" />
			</div>
		</form>
	</div>
	
	<div class="container" id="commentInsert">
		<label for="content">comment</label>
		<form name="commentInsertForm">
			<div class="input-group">
				<input type="hidden" name="bno" value="${result.NB_Num}" />
				<input type="hidden" name="M_Id" value="${user.m_Id}" />
				<input type="text" class="form-control" id="c_Content" name="content" maxlength="200" placeholder="내용을 입력하세요.">
				<span class="input-group-btn">
					<input class="btn btn-outline-secondary" type="button" value="등록" onclick="commentInsert()" />
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