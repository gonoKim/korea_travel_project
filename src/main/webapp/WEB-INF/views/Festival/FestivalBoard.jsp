<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/jstlHeader.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>QnABoard</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/dist/css/bootstrap-4.5.0.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/dist/css/area.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/dist/css/blog.css" >
<script src="${pageContext.request.contextPath}/resources/assets/dist/js/jquery-3.5.1.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/assets/dist/js/popper-1.16.0.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/assets/dist/js/bootstrap-4.5.0.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/assets/dist/js/jquery-1.11.3.min.js"></script>
<!-- 커스텀 Css/JS -->
<script src="../../../resources/QnA/js/QnABoard.js"></script>

<script type="text/javascript">
function FestivalWrite() { 
    location.href = "/Festival/FestivalWrite"; 
}
</script>
</head>
<body >
<div class="container">

 	<jsp:include page="../inc/top.jsp" />
 	
	 <div class="row justify-content-center mt-4">
	<table class="table col-11 text-center">
		<tr>
			<td scope="col">F_No</td>
			<td scope="col">Place</td>
			<td scope="col">Subject</td>
			<td scope="col">Date</td>
		</tr>
		<c:forEach var="b" items="${fResult}">
			<fmt:formatDate value="${b.f_Date}" pattern="yyyy-MM-dd "
				var="dateFormat_cr" />
			<tr>
				<td>${b.f_Num }</td>
				<td>${b.f_Place }</td>
				<td><a href="#"onclick="window.open('/Festival/FestivalView?f_Num=${b.f_Num}', 'choice', 'scrollbars=no, width=600px, height=800px')"  >${b.f_Subject }</a></td>
				<td>${dateFormat_cr }</td>
			</tr>
		</c:forEach>
	</table>


		</div>
	<div>
		      <div class="row justify-content-center my-3 ">
            <button type="submit" onclick="FestivalWrite();"  class="btn">
                Write<i class="fa fa-times spaceLeft"></i>
            </button>
        </div>
	</div>
	</div>

	
</body>
</html>
