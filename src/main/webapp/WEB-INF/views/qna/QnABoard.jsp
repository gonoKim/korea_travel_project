<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/jstlHeader.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>QnABoard</title>
<link rel="stylesheet" href="../../../resources/assets/dist/css/bootstrap-4.5.0.min.css">
<link rel="stylesheet" href="../../../resources/assets/dist/css/area.css">
<link rel="stylesheet" href="../../../resources/assets/dist/css/blog.css" >
<script src="../../../../resources/assets/dist/js/jquery-3.5.1.min.js"></script>
<script src="../../../resources/assets/dist/js/popper-1.16.0.min.js"></script>
<script src="../../../resources/assets/dist/js/bootstrap-4.5.0.min.js"></script>
<script src="../../../resources/assets/dist/js/jquery-1.11.3.min.js"></script>
<!-- 커스텀 Css/JS -->
<script src="../../../resources/QnA/js/QnABoard.js"></script>

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
<body >
<div class="container">

 	<jsp:include page="../inc/top.jsp" />
	
	 <div class="row justify-content-center mt-4">
	<table class="table col-11 text-center">
		<tr>
			<td scope="col">No</td>
			<td scope="col">Writer</td>
			<td scope="col">Subject</td>
			<td scope="col">Views</td>
			<td scope="col">Date</td>
		</tr>
		<c:forEach var="b" items="${result}">
			<fmt:formatDate value="${b.qnA_Date}" pattern="yyyy-MM-dd "
				var="dateFormat_cr" />
			<tr>
				<td>${b.qnA_Num }</td>
				<td>${b.qnA_Write }</td>
				<td><a href="/qna/QnAView?qnA_Num=${b.qnA_Num }">${b.qnA_Subject }</a></td>
				<td>${b.qnA_Views }</td>
				<td>${dateFormat_cr }</td>
			</tr>
		</c:forEach>
	</table>


		</div>
			<!-- pagination{s} -->
			<div id="paginationBox">
				<ul class="pagination row justify-content-center my-4">
					<c:if test="${pagination.qnaprev}">
						<li class="page-item"><a class="page-link" href="#"
							onClick="fn_prev('${pagination.qnapage}', '${pagination.qnarange}', '${pagination.qnarangeSize}')">Previous</a></li>
					</c:if>

					<c:forEach begin="${pagination.qnastartPage}"
						end="${pagination.qnaendPage}" var="idx">
						<li class="page-item <c:out value="${pagination.qnapage == idx ? 'active' : ''}"/> ">
						<a class="page-link" href="#" onClick="fn_pagination('${idx}', '${pagination.qnarange}', '${pagination.qnarangeSize}')">
								${idx} </a>
						</li>
					</c:forEach>

					<c:if test="${pagination.qnanext}">
						<li class="page-item">
						<a class="page-link" href="#" onClick="fn_next('${pagination.qnarange}', '${pagination.qnarange}', '${pagination.qnarangeSize}')">Next</a>
						</li>
					</c:if>
				</ul>
			</div>

			<!-- pagination{e} -->
	
	<div>
		      <div class="row justify-content-center my-3 ">
            <button type="submit" onclick="QnAwrite();"  class="btn">
                Write<i class="fa fa-times spaceLeft"></i>
            </button>
        </div>
	</div>
	</div>
 	<jsp:include page="../inc/bottom.jsp" />
<!-- 	<footer class="blog-footer ">
		<p>
			Blog template built for <a href="https://getbootstrap.com/">Bootstrap</a>
			by <a href="https://twitter.com/mdo">@mdo</a>.
		</p>
		<p>
			<a href="#">Back to top</a>
		</p>
	</footer> -->
	
</body>
</html>
