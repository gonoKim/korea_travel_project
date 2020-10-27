<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/jstlHeader.jsp"%>

<!doctype html>
<html lang="ko">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Jekyll v4.0.1">
    <title>Main</title>
    
    <link rel="canonical" href="${pageContext.request.contextPath}/resources/assets/dist/css/bootstrap-4.5.0.min.css">
    <script src="${pageContext.request.contextPath}/resources/assets/dist/js/jquery-3.5.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/assets/dist/js/popper-1.16.0.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/assets/dist/js/bootstrap-4.5.0.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/assets/dist/js/jquery-1.11.3.min.js"></script>

    <!-- Bootstrap core CSS -->
    <link href="${pageContext.request.contextPath}/resources/assets/dist/css/bootstrap.css" rel="stylesheet">
    
    <!-- Custom styles for this template -->
    <link rel="canonical" href="${pageContext.request.contextPath}/resources/assets/dist/css/font-css.css">
	<link href="${pageContext.request.contextPath}/resources/assets/dist/css/font.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/main/css/area.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/main/css/blog.css" rel="stylesheet">

  </head>

  <body>
    <div class="container">
    
      <jsp:include page="../inc/top.jsp"/>

      <div id="Banner_carousel" class="carousel slide" data-ride="carousel" data-interval="3000" pause="hover">
        <ol class="carousel-indicators">
          <li data-target="#Banner_carousel" data-slide-to="0" class="active"></li>
          <li data-target="#Banner_carousel" data-slide-to="1"></li>
          <li data-target="#Banner_carousel" data-slide-to="2"></li>
          <li data-target="#Banner_carousel" data-slide-to="3"></li>
        </ol>
        <div class="carousel-inner">
          <div class="carousel-item active">
            <img class="d-block w-100" src="${pageContext.request.contextPath}/resources/imgUpload/festivalImg/${topBanner[0].STORED_FILE_NAME}" alt="First slide">
          </div>
          <div class="carousel-item">
            <img class="d-block w-100" src="${pageContext.request.contextPath}/resources/imgUpload/festivalImg/${topBanner[1].STORED_FILE_NAME}" alt="Second slide">
          </div>
          <div class="carousel-item">
            <img class="d-block w-100" src="${pageContext.request.contextPath}/resources/imgUpload/festivalImg/${topBanner[2].STORED_FILE_NAME}" alt="Third slide">
          </div>
          <div class="carousel-item">
            <img class="d-block w-100" src="${pageContext.request.contextPath}/resources/imgUpload/festivalImg/${topBanner[3].STORED_FILE_NAME}" alt="fourth slide">
          </div>
        </div>
		        
        <a class="carousel-control-prev" href="#Banner_carousel" role="button" data-slide="prev">
          <span class="carousel-control-prev-icon" aria-hidden="true"></span>
          <span class="sr-only">Previous</span>
        </a>
        <a class="carousel-control-next" href="#Banner_carousel" role="button" data-slide="next">
          <span class="carousel-control-next-icon" aria-hidden="true"></span>
          <span class="sr-only">Next</span>
        </a>
      </div>
      <c:if test="${user == null }">
      <div class="text-center my-4" id="festivalcenter">
      <h2 class="font-weight-bold" id="festivalcenter">로그인 후 더 다양한 축제를 확인 해 보세요.
      </h2>
      </div>
    </c:if>  
	<c:if test="${user != null }">
     <jsp:include page="../inc/festivalnav.jsp" />
	</c:if>
      <div class="row mb-4">
        <div class="col-md-6">
          <h5>Photo Gallery</h5>
          <div id="Photo_BannerBox" class="row no-gutters border rounded overflow-hidden flex-md-row mb-4 shadow-sm h-md-250 position-relative">
            <div id="Photo_carousel" class="carousel slide" data-ride="carousel" data-interval="2000" pause="hover">
              <div class="carousel-inner">
                <div class="carousel-item active">
                  <img src="${pageContext.request.contextPath}/resources/imgUpload/festivalImg/${bottomBanner[0].STORED_FILE_NAME}" class="d-block w-100">
                </div>
                <div class="carousel-item">
                  <img src="${pageContext.request.contextPath}/resources/imgUpload/festivalImg/${bottomBanner[1].STORED_FILE_NAME}" class="d-block w-100">
                </div>
                <div class="carousel-item">
                  <img src="${pageContext.request.contextPath}/resources/imgUpload/festivalImg/${bottomBanner[2].STORED_FILE_NAME}" class="d-block w-100">
                </div>
                <div class="carousel-item">
                  <img src="${pageContext.request.contextPath}/resources/imgUpload/festivalImg/${bottomBanner[3].STORED_FILE_NAME}" class="d-block w-100">
                </div>
                <div class="carousel-item">
                  <img src="${pageContext.request.contextPath}/resources/imgUpload/festivalImg/${bottomBanner[4].STORED_FILE_NAME}" class="d-block w-100">
                </div>
              </div>
              <a class="carousel-control-prev" href="#Photo_carousel" role="button" data-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
              </a>
              <a class="carousel-control-next" href="#Photo_carousel" role="button" data-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
              </a>
            </div>
          </div>
        </div>
        
        <div class="col-md-6">
          <h5>Notice</h5>
          <div id="NB_Box" class="row no-gutters border rounded overflow-hidden flex-md-row mb-4 shadow-sm h-md-250 position-relative">
              <table class="table table-sm">
				<tr><td id="border_Delete"><a href="/notice/NoticeView?NB_Num=${nbList[0].NB_Num}"><h3><font class="title_color">[공지]</font> ${nbList[0].NB_Subject}</h3></a></td></tr>
				<c:forEach items="${nbList}" var="nbList" begin="1">
					<tr><td><a href="/notice/NoticeView?NB_Num=${nbList.NB_Num}"><font class="title_color">[공지]</font> ${nbList.NB_Subject}</a></td></tr>
				</c:forEach>
			</table>
          </div>
        </div>
        
      </div>
    </div>

  	<jsp:include page="../inc/bottom.jsp"/>
  </body>
</html>
