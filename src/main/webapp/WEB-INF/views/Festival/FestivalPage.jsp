<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/jstlHeader.jsp"%>

<!DOCTYPE html>
<html>
	<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>FestivalPage</title>

	<link rel="canonical" href="${pageContext.request.contextPath}/resources/assets/dist/css/bootstrap-4.5.0.min.css">
    <script src="${pageContext.request.contextPath}/resources/assets/dist/js/jquery-3.5.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/assets/dist/js/popper-1.16.0.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/assets/dist/js/bootstrap-4.5.0.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/assets/dist/js/jquery-1.11.3.min.js"></script>

    <!-- Bootstrap core CSS -->
    <link href="${pageContext.request.contextPath}/resources/assets/dist/css/bootstrap.css" rel="stylesheet">
    
	<!-- Custom styles for this template -->
	<link href="${pageContext.request.contextPath}/resources/assets/dist/css/mainCommon.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath}/resources/assets/dist/css/font-css.css" rel="canonical">
	<link href="${pageContext.request.contextPath}/resources/main/css/area.css"	rel="stylesheet">
	<link href="${pageContext.request.contextPath}/resources/festival/css/page.css"	rel="stylesheet">
	
	<script type="text/javascript">
function win(Num)
{
	var url = "/Festival/pageView";
	url = url + "?f_Num="+Num;
	window.open(url,"새창의 제목","width=1200,height=900");
}
</script>
</head>

<body>
	<div class="container">

		<!-- nav -->
		<jsp:include page="../inc/top.jsp" />

		<!-- 이미지 경로  -->
		<%-- <%=request.getRealPath("/") %>  --%>
		<%-- <%=request.getRealPath("/resources/imgUpload/festivalImg") %>  --%>
​	
		<div id="picture_group" class="my-4 d-block text-center">
			<h3 class="my-3">국내 축제 이미지</h3>
			<hr>
			<!-- 이미지 경로 -->
			<img
				src="${pageContext.request.contextPath}/resources/imgUpload/festivalImg/${fIResult[0].STORED_FILE_NAME}"
				class="rounded  rounded-left mx-auto "> <img
				src="${pageContext.request.contextPath}/resources/imgUpload/festivalImg/${fIResult[1].STORED_FILE_NAME}"
				class="rounded  mg-fluid mx-3 "> <img
				src="${pageContext.request.contextPath}/resources/imgUpload/festivalImg/${fIResult[2].STORED_FILE_NAME}"
				class="rounded  mg-fluid mx-3 "> <img
				src="${pageContext.request.contextPath}/resources/imgUpload/festivalImg/${fIResult[3].STORED_FILE_NAME}"
				class="rounded  rounded-right mx-auto ">
		</div>

		<!-- 축제 네비 -->
		<jsp:include page="../inc/festivalnav.jsp" />

		<div id="btn_view_more" class="text-center my-4">
			<p>
				<button class="btn btn-sm btn-outline-secondary" type="button" data-toggle="collapse" data-target=".multi-collapse" aria-expanded="false" aria-controls="multiCollapseExample">
					View More
				</button>
			</p>
		</div>

		<div id="view_more">
			<div class="collapse multi-collapse" id="multiCollapseExample">
				<div class="Interval">
					<table class="row justify-content-center">
					<hr>
						<!-- 페이지 변수 -->
						<c:forEach var="fPage" items="${fResult}" begin="0" end="${fn:length(fResult)}" varStatus="status">
							<!-- 이미지 변수 -->
							<c:set var="fImg" value="${fIResult[status.index]}" />

							<tbody class="col-5 my-4 ">
								<tr>
									<th colspan="2" class="text-center">${fPage.f_Subject}</th>
								</tr>
								<tr>
									<td rowspan="3" id="contentImg" class="">
										<img src="${pageContext.request.contextPath}/resources/imgUpload/festivalImg/${fImg.STORED_FILE_NAME}" class="card-img mr-2">
									</td>
									<td>${fPage.f_Content}</td>
								</tr>
								<tr>
									<td>${fPage.f_Address}</td>
								</tr>
								<tr>
									<td>
										<h6>
											시작일 : ${fPage.f_S_Year}-${fPage.f_S_Month}-${fPage.f_S_Day}<br>
											끝나는일 : ${fPage.f_L_Year}-${fPage.f_L_Month}-${fPage.f_L_Day}
										</h6>
										<button class="btn" onclick="win(${fPage.f_Num});">
											자세히 보기	
										</button>
									</td>
								</tr>
							</tbody>
						</c:forEach>
					</table>
				</div>
			</div>
		</div>
	</div>
	<!-- footer -->
	
	<%-- <jsp:include page="../inc/bottom.jsp" /> --%>
	
</body>
</html>
