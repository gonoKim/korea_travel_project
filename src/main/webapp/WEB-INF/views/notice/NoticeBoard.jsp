<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/jstlHeader.jsp"%>

<!DOCTYPE html>
<html>
	<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>NoticeBoard</title>

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
	
	<!-- js -->
	<script src="${pageContext.request.contextPath}/resources/assets/dist/js/jquery-3.4.1.min.js"></script>

	<script type="text/javascript">
		function NoticeWrite() {
			location.href = "/notice/NoticeWrite";
		}
	
		//이전 버튼 이벤트
		function fn_prev(noticepage, noticerange, noticerangeSize) {
			var noticepage = ((noticerange - 2) * noticerangeSize) + 1;
			var noticerange = noticerange - 1;
			var url = "${pageContext.request.contextPath}/notice/NoticeBoard";
			
			url = url + "?noticepage=" + noticepage;
			url = url + "&noticerange=" + noticerange;
			location.href = url;
		}
	
	  	// 페이지 번호 클릭
		function fn_pagination(noticepage, noticerange, noticerangeSize) {
			var url = "${pageContext.request.contextPath}/notice/NoticeBoard";
			
			url = url + "?noticepage=" + noticepage;
			url = url + "&noticerange=" + noticerange;
			location.href = url;	
		}
	
		// 다음 버튼 이벤트
		function fn_next(noticepage, noticerange, noticerangeSize) {
			var noticepage = parseInt((noticerange * noticerangeSize)) + 1;
			var noticerange = parseInt(noticerange) + 1;
			var url = "${pageContext.request.contextPath}/notice/NoticeBoard";
			
			url = url + "?noticepage=" + noticepage;
			url = url + "&noticerange=" + noticerange;
			location.href = url;
		}
	</script>
</head>

<body>
	<div class="container">
	
		<jsp:include page="../inc/top.jsp" />

		<div class="row justify-content-center mt-4">
			<table class="table col-11 text-center">
				<tr>
					<td scope="col">No</td>
					<td scope="col">Subject</td>
					<td scope="col">Writer</td>
					<td scope="col">Views</td>
					<td scope="col">Date</td>
				</tr>
				<c:forEach var="n" items="${result}">
					<fmt:formatDate value="${n.NB_Date}" pattern="yyyy-MM-dd" var="dateFormat_n" />
					<tr>
						<td>${n.NB_Num}</td>
						<td><a href="/notice/NoticeView?NB_Num=${n.NB_Num}">${n.NB_Subject}</a></td>
						<td>${n.m_Id}</td>
						<td>${n.NB_Views}</td>
						<td>${dateFormat_n}</td>
					</tr>
				</c:forEach>
			</table>
		</div>
		
		<!-- pagination{s} -->
		<div id="paginationBox">
			<ul class="pagination row justify-content-center my-4">
				<c:if test="${pagination.noticeprev}">
					<li class="page-item">
						<a class="page-link" href="#" onClick="fn_prev('${pagination.noticepage}', '${pagination.noticerange}', '${pagination.noticerangeSize}')">Previous</a>
					</li>
				</c:if>

				<c:forEach begin="${pagination.noticestartPage}" end="${pagination.noticeendPage}" var="idx">
					<li class="page-item <c:out value="${pagination.noticepage == idx ? 'active' : ''}"/> ">
						<a class="page-link" href="#" onClick="fn_pagination('${idx}', '${pagination.noticerange}', '${pagination.noticerangeSize}')">${idx}</a>
					</li>
				</c:forEach>

				<c:if test="${pagination.noticenext}">
					<li class="page-item">
						<a class="page-link" href="#" onClick="fn_next('${pagination.noticerange}', '${pagination.noticerange}', '${pagination.noticerangeSize}')">Next</a>
					</li>
				</c:if>
			</ul>
		</div>
		<!-- pagination{e} -->

		<c:if test="${user.m_Grade == 'admin'}">
			<div class="row justify-content-around my-4">
				<a></a><a></a><a></a><a></a><a></a> 											<!-- 칸채우기용 -->
				<button type="submit" onclick="NoticeWrite();" class="btn btn-outline-secondary">Write</button>
			</div>
		</c:if>
	</div>

	<jsp:include page="../inc/bottom.jsp" />
	
</body>
</html>
