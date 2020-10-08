<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/jstlHeader.jsp"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/dist/css/bootstrap-4.5.0.min.css">
<link href="${pageContext.request.contextPath}/resources/assets/dist/css/mainCommon.css" rel="stylesheet">
<script src="${pageContext.request.contextPath}/resources/assets/dist/js/jquery-3.5.1.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/assets/dist/js/popper-1.16.0.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/assets/dist/js/bootstrap-4.5.0.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/assets/dist/js/jquery-1.11.3.min.js"></script>
<!-- <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=발급받은 APP KEY를 넣으시면 됩니다."></script> -->

<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="container">
<c:set var="page" value="${fResult}" />
<c:set var="img" value="${fIResult}" />
<div class="row">
<div class=col>
<c:out value="${page.f_Subject}" />
</div>
</div>
<div class="row">
<div class="col-5"><img src="${pageContext.request.contextPath}/resources/imgUpload/festivalImg/${img.STORED_FILE_NAME}" class="rounded  rounded-left mx-auto "></div>
<div class="col-7">${page.f_Content}</div>
</div>
<div class="row">
<div class="col">시작일 : ${page.f_S_Year}-${page.f_S_Month}-${page.f_S_Day}<br>
				끝나는일 : ${page.f_L_Year}-${page.f_L_Month}-${page.f_L_Day}
</div>
</div>
<div class="row">
<div class="col">${page.f_Address}</div>
</div>
<!-- <div class="row">
<div id="map" style="width:500px;height:400px;" class="col"></div>
</div> -->
	<input type="button" value="Cancel" class="btn" onclick="window.close();" />
</div>
</body>
</html>