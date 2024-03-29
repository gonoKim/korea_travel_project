<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/jstlHeader.jsp"%>

<%
	pageContext.setAttribute("br", "<br/>");
	pageContext.setAttribute("cn", "\n");
%>
<!DOCTYPE html>
<html>
	<head>
    <meta charset="UTF-8">
	<title>QnaView</title>
	
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
		function boardDelete(){	
			var chk = confirm("本当に削除しますか？");
			if (chk) {
				location.href="/qna/QnADelete?qnA_Num=${result.qnA_Num}";
			}
		}	
		
		function QnAUpdate(){
			location.href = "/qna/QnAUpdate?qnA_Num=${result.qnA_Num}";
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
					<th class="text-center w-25 p-3 qnaTh bg-secondary text-white">タイトル</th>
					<td scope="row" class="px-4 qnaTd" colspan="3">${result.qnA_Subject}</td>
				</tr>
				<tr>
					<th class="text-center qnaTh bg-secondary text-white">著者</th>
					<td scope="row" class="px-4 qnaTd">${result.m_Id}</td>
					<th class="text-center qnaTh bg-secondary text-white">ヒット数</th>
					<td scope="row" class="px-4 qnaTd">${result.qnA_Views}</td>
				</tr>
				<tr>
					<!-- <th class="text-center qnaTh bg-primary">Content:</th> -->
					<td scope="row" class="px-4 qnaTd " colspan="4">${fn:replace(result.qnA_Content, cn, br)}</td>
				</tr>

				<tr>
					
				</tr>
			</table>
			
			<div class="row justify-content-center my-4">
				<c:if test="${result.m_Id == user.m_Id || user.m_Grade == 'admin'}">
					<c:if test="${result.m_Id == user.m_Id}">
						<input type="button" value="修正" class="btn btn-outline-secondary" onclick="QnAUpdate()" />
					</c:if>
					<input type="button" value="削除" class="btn btn-outline-secondary mx-3" onclick="boardDelete()" />
				</c:if>
				<input type="button" value="リスト" class="btn btn-outline-secondary" onclick="javascript:location.href='QnABoard'" />
			</div>
		</form>
	</div>
	
	<div class="container" id="commentInsert">
		<label for="content" id="comment">コメント</label>
		<form name="commentInsertForm">
			<div class="input-group ">
				<input type="hidden" name="bno" value="${result.qnA_Num}" />
				<input type="hidden" name="M_Id" value="${user.m_Id}" />
				<input type="text" class="form-control" id="c_Content" name="content" maxlength="200" placeholder="内容を入力してください">
				<span class="input-group-btn">
					<input class="btn btn-outline-secondary" type="button" value="書く" onclick="commentInsert()" />
				</span>
			</div>
		</form>
	</div>
	
	<div class="container" id="commentList">
		<div class="commentList"></div>
	</div>

	<%@ include file="QnAComment.jsp"%>
	<jsp:include page="../inc/bottom.jsp" />
	
</body>
</html>