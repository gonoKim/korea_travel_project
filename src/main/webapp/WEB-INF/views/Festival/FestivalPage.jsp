<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/jstlHeader.jsp"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>QnABoard</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/assets/dist/css/bootstrap-4.5.0.min.css">
<link
	href="${pageContext.request.contextPath}/resources/assets/dist/css/mainCommon.css"
	rel="stylesheet">
<script
	src="${pageContext.request.contextPath}/resources/assets/dist/js/jquery-3.5.1.min.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/assets/dist/js/popper-1.16.0.min.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/assets/dist/js/bootstrap-4.5.0.min.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/assets/dist/js/jquery-1.11.3.min.js"></script>

<!-- Bootstrap core CSS -->
<link
	href="${pageContext.request.contextPath}/resources/assets/dist/css/bootstrap.css"
	rel="stylesheet">

<!-- Custom styles for this template -->
<link rel="canonical"
	href="${pageContext.request.contextPath}/resources/assets/dist/css/font-css.css">
<link
	href="${pageContext.request.contextPath}/resources/main/css/area.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/resources/main/css/blog.css"
	rel="stylesheet">



</head>

<body>
	<div class="container">


		<!-- nav -->
		<jsp:include page="../inc/top.jsp" />

		<!-- 이미지 경로  -->
		<%-- <%=request.getRealPath("/") %>  --%>
		<%-- <%=request.getRealPath("/resources/imgUpload/festivalImg") %>  --%>

		​
		<picture id="picture_group"> <!-- 이미지 경로 --> <img
			src="${pageContext.request.contextPath}/resources/imgUpload/festivalImg/${fIResult[0].STORED_FILE_NAME}"
			class="rounded-left mx-auto"> <img
			src="${pageContext.request.contextPath}/resources/imgUpload/festivalImg/${fIResult[1].STORED_FILE_NAME}"
			class="mg-fluid mx-auto"> <img
			src="${pageContext.request.contextPath}/resources/imgUpload/festivalImg/${fIResult[2].STORED_FILE_NAME}"
			class="mg-fluid mx-auto"> <img
			src="${pageContext.request.contextPath}/resources/imgUpload/festivalImg/${fIResult[3].STORED_FILE_NAME}"
			class="rounded-right mx-auto"> </picture>

		<!-- 축제 네비 -->
		<jsp:include page="../inc/festivalnav.jsp" />
	
		<div id="btn_view_more">
			<p>
				<button class="btn btn-sm btn-outline-secondary" type="button"
					data-toggle="collapse" data-target=".multi-collapse"
					aria-expanded="false"
					aria-controls="multiCollapseExample1 multiCollapseExample2">View
					More</button>
			</p>
		</div>

		<div id="view_more">

			<div class="containercollapse multi-collapse"
				id="multiCollapseExample">
				<table class="row justify-content-center">
					
					<!-- 페이지 변수 -->
					<c:forEach var="fPage" items="${fResult}" begin="0"	end="${fn:length(fResult)}" varStatus="status">
					<!-- 이미지 변수 -->
						<c:set var="fImg" value="${fIResult[status.index]}" />

						<tbody class="col-4 mx-3">
							<tr>
								<th colspan="2">${fPage.f_Subject}</th>
							</tr>
							<tr>
								<td rowspan="3"><img
									src="${pageContext.request.contextPath}/resources/imgUpload/festivalImg/${fImg.STORED_FILE_NAME}"
									class="card-img"></td>
								<td>${fPage.f_Content}</td>
							</tr>
							<tr>
								<td>${fPage.f_Address}</td>
							</tr>
							<tr>
								<td>시작일 :
									${fPage.f_S_Year}-${fPage.f_S_Month}-${fPage.f_S_Day}<br>
									끝나는일 : ${fPage.f_L_Year}${fPage.f_L_Month}${fPage.f_L_Day}
								</td>
							</tr>
						</tbody>
					</c:forEach>
				</table>
			</div>
		</div>
	</div>
	<!-- footer -->
	<%-- 	<jsp:include page="../inc/bottom.jsp" /> --%>
</body>
</html>
