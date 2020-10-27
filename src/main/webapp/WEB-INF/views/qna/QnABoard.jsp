<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/jstlHeader.jsp"%>

<!DOCTYPE html>
<html>
	<head>
    <meta charset="UTF-8">
	<title>QnABoard</title>
	
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
	<link href="${pageContext.request.contextPath}/resources/QnA/css/qnaboard.css" rel="stylesheet">
	<!-- js -->
	<script src="${pageContext.request.contextPath}/resources/assets/dist/js/jquery-3.4.1.min.js"></script>

	<!-- google font --> 
	<link href="${pageContext.request.contextPath}/resources/QnA/css/font.css" rel="stylesheet">
	

	<script type="text/javascript">
		function QnAwrite() { 
		    location.href = "/qna/QnAWrite"; 
		}
		
		//이전 버튼 이벤트
		function fn_prev(qnapage, qnarange, qnarangeSize) {
			var qnapage = ((qnarange - 2) * qnarangeSize) + 1;
			var qnarange = qnarange - 1;
			var url = "${pageContext.request.contextPath}/qna/QnABoard";
			
			url = url + "?qnapage=" + qnapage;
			url = url + "&qnarange=" + qnarange;
			location.href = url;
		}
		
		//페이지 번호 클릭
		function fn_pagination(qnapage, qnarange, qnarangeSize) {
			var url = "${pageContext.request.contextPath}/qna/QnABoard";
			
			url = url + "?qnapage=" + qnapage;
			url = url + "&qnarange=" + qnarange;
			location.href = url;	
		}
		
		//다음 버튼 이벤트
		function fn_next(qnapage, qnarange, qnarangeSize) {
			var qnapage = parseInt((qnarange * qnarangeSize)) + 1;
			var qnarange = parseInt(qnarange) + 1;
			var url = "${pageContext.request.contextPath}/qna/QnABoard";
			
			url = url + "?qnapage=" + qnapage;
			url = url + "&qnarange=" + qnarange;
			location.href = url;
		}
	</script>
</head>

<body>
	<div class="container">

		<jsp:include page="../inc/top.jsp" />

		<div class="row justify-content-center mt-4">
			<table class="table table-hover col-11 text-center">
				<tr class="bg-secondary text-white qnaTh">
					<td scope="col">ナンバー</td>
					<td scope="col">テーマ</td>
					<td scope="col">著者</td>
					<td scope="col">アクセス数</td>
					<td scope="col">日</td>
				</tr>
				<c:forEach var="b" items="${result}">
					<fmt:formatDate value="${b.qnA_Date}" pattern="yyyy-MM-dd " var="dateFormat_cr" />
					<tr class="qnaTd bg-white">
						<td scope="row">${b.qnA_Num}</td>
						<td><a href="/qna/QnAView?qnA_Num=${b.qnA_Num}"  class="text-secondary d-inline-block text-truncate" style="max-width: 250px;">${b.qnA_Subject}</a></td>
						<td>${b.m_Id}</td>
						<td>${b.qnA_Views}</td>
						<td>${dateFormat_cr}</td>
					</tr>
				</c:forEach>
			</table>
		</div>
		
		<!-- pagination{s} -->
		<div id="paginationBox">
			<ul class="pagination row justify-content-center my-4 ">
				<c:if test="${pagination.qnaprev}">
					<li class="page-item ">
						<a class="page-link " href="#" onClick="fn_prev('${pagination.qnapage}', '${pagination.qnarange}', '${pagination.qnarangeSize}')">Previous</a>
					</li>
				</c:if>

				<c:forEach begin="${pagination.qnastartPage}" end="${pagination.qnaendPage}" var="idx">
					<li class="page-item  <c:out value="${pagination.qnapage == idx ? 'active' : ''}"/> ">
						<a class="page-link " href="#" onClick="fn_pagination('${idx}', '${pagination.qnarange}', '${pagination.qnarangeSize}')">${idx}</a>
					</li>
				</c:forEach>

				<c:if test="${pagination.qnanext}">
					<li class="page-item ">
						<a class="page-link " href="#" onClick="fn_next('${pagination.qnarange}', '${pagination.qnarange}', '${pagination.qnarangeSize}')">Next</a>
					</li>
				</c:if>
			</ul>
		</div>
		<!-- pagination{e} -->
		
		<c:if test="${user != null}">
			<div class="row justify-content-around my-4">
				<a></a><a></a><a></a><a></a><a></a> 										<!-- 칸채우기용 -->
				<button type="submit" onclick="QnAwrite();" class="btn btn-outline-secondary">書く</button>
			</div>
		</c:if>
	</div>
	
	<jsp:include page="../inc/bottom.jsp" />
	
</body>

</html>
