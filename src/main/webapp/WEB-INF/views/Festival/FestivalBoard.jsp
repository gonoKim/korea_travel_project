<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/jstlHeader.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>QnABoard</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/dist/css/bootstrap-4.5.0.min.css">
<link href="${pageContext.request.contextPath}/resources/assets/dist/css/mainCommon.css" rel="stylesheet">
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
function FestivalDelete(){	
	var chk = confirm("정말 삭제하시겠습니까?");
	if (chk) {
		   var checkArr = new Array();
		   $("input[class='chBox']:checked").each(function(){
		    checkArr.push($(this).attr("value"));
		   });
		    
		   $.ajax({
		    url : "/Festival/FestivalDelete",
		    type : "get",
		    data : { chbox : checkArr },
		    success : function(){
		     location.href = "/Festival/FestivalBoard";
		    }
		   });
		  } 
}	
//이전 버튼 이벤트
function fn_prev(festivalpage, festivalrange, festivalrangeSize, searchType, keyword) {
	var festivalpage = ((festivalrange - 2) * festivalrangeSize) + 1;
	var festivalrange = festivalrange - 1;
	var url = "${pageContext.request.contextPath}/Festival/FestivalBoard";
	url = url + "?festivalpage=" + festivalpage;
	url = url + "&festivalrange=" + festivalrange;
	url = url + "&searchType=" + $('#searchType').val();
	url = url + "&keyword=" + keyword;
	location.href = url;
}



//페이지 번호 클릭
function fn_pagination(festivalpage, festivalrange, festivalrangeSize, searchType, keyword) {
	var url = "${pageContext.request.contextPath}/Festival/FestivalBoard";
	url = url + "?festivalpage=" + festivalpage;
	url = url + "&festivalrange=" + festivalrange;
	url = url + "&searchType=" + $('#searchType').val();
	url = url + "&keyword =" + keyword;
	location.href = url;	
}

//다음 버튼 이벤트
function fn_next(festivalpage, festivalrange, festivalrangeSize, searchType, keyword) {
	var festivalpage = parseInt((festivalrange * festivalrangeSize)) + 1;
	var festivalrange = parseInt(festivalrange) + 1;
	var url = "${pageContext.request.contextPath}/Festival/FestivalBoard";
	url = url + "?festivalpage=" + festivalpage;
	url = url + "&festivalrange=" + festivalrange;
	url = url + "&searchType=" + $('#searchType').val();
	url = url + "&keyword=" + keyword;
	location.href = url;
}

//검색 
$(document).on('click', '#btnSearch', function(e){
	e.preventDefault();
	var url = "${pageContext.request.contextPath}/Festival/FestivalBoard";
	url = url + "?searchType=" + $('#searchType').val();
	url = url + "&keyword=" + $('#keyword').val();
	location.href = encodeURI(url);//encodeURI;
	console.log(url);
});	

</script>
</head>
<body >
<div class="container">

 	<jsp:include page="../inc/top.jsp" />
 	
	 <div class="row justify-content-center mt-4">
	<table class="table col-11 text-center">
		<tr>
			<td scope="col"></td>
			<td scope="col">F_No</td>
			<td scope="col">Place</td>
			<td scope="col">Subject</td>
			<td scope="col">Date</td>
		</tr>
		<c:forEach var="b" items="${fResult}">
			<fmt:formatDate value="${b.f_Date}" pattern="yyyy-MM-dd "
				var="dateFormat_cr" />
			<tr>
				<td><input type="checkbox" name="chBox" class="chBox" value="${b.f_Num }"></td>
				<td>${b.f_Num }</td>
				<td>${b.f_Place }</td>
				<td><a href="#"onclick="window.open('/Festival/FestivalView?f_Num=${b.f_Num}', 'choice', 'scrollbars=no, width=600px, height=800px')"  >${b.f_Subject }</a></td>
				<td>${dateFormat_cr }</td>
			</tr>
		</c:forEach>
	</table>
		</div>
		
			<!-- 페이징 시작 -->
			<div id="paginationBox">
				<ul class="pagination row justify-content-center my-4">
					<c:if test="${fPagination.festivalprev}">
						<li class="page-item"><a class="page-link" href="#"
							onClick="fn_prev('${fPagination.festivalpage}', '${fPagination.festivalrange}', '${fPagination.festivalrangeSize}', '${fSearch.searchType}', '${fSearch.keyword}')">Previous</a></li>
					</c:if>

					<c:forEach begin="${fPagination.festivalstartPage}"
						end="${fPagination.festivalendPage}" var="idx">
						<li class="page-item <c:out value="${fPagination.festivalpage == idx ? 'active' : ''}"/> ">
						<a class="page-link" href="#" onClick="fn_pagination('${idx}', '${fPagination.festivalrange}', '${fPagination.festivalrangeSize}', '${fSearch.searchType}', '${fSearch.keyword}')">
								${idx} </a>
						</li>
					</c:forEach>

					<c:if test="${fPagination.festivalnext}">
						<li class="page-item">
						<a class="page-link" href="#" onClick="fn_next('${fPagination.festivalrange}', '${fPagination.festivalrange}', '${fPagination.festivalrangeSize}', '${fSearch.searchType}', '${fSearch.keyword}')">Next</a>
						</li>
					</c:if>
				</ul>
			</div>

			<!-- 페이징 끝 -->
			
			<!-- search{s} -->

		<div class="form-group row justify-content-center">
			<div class="w100" style="padding-right:10px">
				<select class="form-control form-control-sm" name="searchType" id="searchType">
					<option value="F_Subject">제목</option>
					<option value="F_Content">내용</option>
					<option value="F_Place">장소</option>
				</select>
			</div>
			<div class="w300" style="padding-right:10px">
				<input type="text" class="form-control form-control-sm" name="keyword" id="keyword" value="${keyword }">
			</div>
			<div>
				<button class="btn btn-sm btn-primary" name="btnSearch" id="btnSearch">검색</button>
			</div>
		</div>
		<!-- search{e} -->
	<div>
		      <div class="row justify-content-center my-3 ">
            <input type="button" value="Write" class="btn" onclick="window.open('/Festival/FestivalWrite', 'choice', 'scrollbars=no, width=800px, height=600px')"/>
            <input type="button" value="Delete" class="btn" onclick="FestivalDelete();"/>
            
        </div>
	</div>
	</div>

	
</body>
</html>
