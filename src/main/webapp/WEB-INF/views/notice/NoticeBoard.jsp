<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/jstlHeader.jsp"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>NoticeBoard</title>
<link rel="stylesheet"
	href="../../../resources/assets/dist/css/bootstrap-4.5.0.min.css">
<link rel="stylesheet"
	href="../../../resources/assets/dist/css/area.css">
<link rel="stylesheet"
	href="../../../resources/assets/dist/css/blog.css">
<script src="../../../../resources/assets/dist/js/jquery-3.5.1.min.js"></script>
<script src="../../../resources/assets/dist/js/popper-1.16.0.min.js"></script>
<script src="../../../resources/assets/dist/js/bootstrap-4.5.0.min.js"></script>
<script src="../../../resources/assets/dist/js/jquery-1.11.3.min.js"></script>

<script type="text/javascript">
	function NoticeWrite() {
		location.href = "/notice/NoticeWrite";
	}
</script>
</head>
<body>
	<div class="container">
		<jsp:include page="../inc/top.jsp" />
		<!-- //공통 헤더&네비 -->

		<div class="row justify-content-center mt-4">
			<table class="table col-11 text-center">
				<tr>
					<td scope="col">No</td>
					<td scope="col">Subject</td>
					<td scope="col">Views</td>
					<td scope="col">Date</td>
				</tr>
				<c:forEach var="n" items="${result }">
					<fmt:formatDate value="${n.NB_Date}" pattern="yyyy-MM-dd "
						var="dateFormat_n" />
					<tr>
						<td>${n.NB_Num }</td>
						<td><a href="/notice/NoticeView?NB_Num=${n.NB_Num }">${n.NB_Subject }</a></td>
						<td>${n.NB_Views }</td>
						<td>${dateFormat_n }</td>
					</tr>
				</c:forEach>
			</table>
			
		</div>
		<div>
			<div class="row justify-content-center my-3 ">
				<button type="submit" onclick="NoticeWrite();" class="btn">
					Write<i class="fa fa-times spaceLeft"></i>
				</button>
			</div>
		</div>
	</div>

 	<jsp:include page="../inc/bottom.jsp" />
	<!-- //공통 푸터 -->
</body>
</html>
