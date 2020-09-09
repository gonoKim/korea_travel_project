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

    <!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script> -->
    
    <link rel="canonical" href="${pageContext.request.contextPath}/resources/assets/dist/css/bootstrap-4.5.0.min.css">
    <script src="${pageContext.request.contextPath}/resources/assets/dist/js/jquery-3.5.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/assets/dist/js/popper-1.16.0.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/assets/dist/js/bootstrap-4.5.0.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/assets/dist/js/jquery-1.11.3.min.js"></script>

    <!-- Bootstrap core CSS -->
    <link href="${pageContext.request.contextPath}/resources/assets/dist/css/bootstrap.css" rel="stylesheet">
    
    <!-- Custom styles for this template -->
    <link rel="canonical" href="${pageContext.request.contextPath}/resources/assets/dist/css/font-css.css">
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
            <img class="d-block w-100" src="${pageContext.request.contextPath}/resources/main/Images/${imgBanner[0].photo_Num}.jpg" alt="First slide">
          </div>
          <div class="carousel-item">
            <img class="d-block w-100" src="${pageContext.request.contextPath}/resources/main/Images/${imgBanner[1].photo_Num}.jpg" alt="Second slide">
          </div>
          <div class="carousel-item">
            <img class="d-block w-100" src="${pageContext.request.contextPath}/resources/main/Images/${imgBanner[2].photo_Num}.jpg" alt="Third slide">
          </div>
          <div class="carousel-item">
            <img class="d-block w-100" src="${pageContext.request.contextPath}/resources/main/Images/${imgBanner[3].photo_Num}.jpg" alt="fourth slide">
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

      <div class="area_silver" id="Area_page">
        <div class="wrap">
          <div class="area_title">국내 축제</div>
          <div class="travel_box">
            <div class="travel_section" id="travel_section_00">
              <div class="travel_left">주요도시</div>
              <a href="../Menu/Festival/festival.html" class="travel_a_city">서울</a>
              <a href="../Menu/Festival/festival.html" class="travel_a_city">인천</a>
              <a href="../Menu/Festival/festival.html" class="travel_a_city">부산</a>
              <a href="../Menu/Festival/festival.html" class="travel_a_city">대구</a>
              <a href="../Menu/Festival/festival.html" class="travel_a_city">광주</a>
              <a href="../Menu/Festival/festival.html" class="travel_a_city">대전</a>
              <a href="../Menu/Festival/festival.html" class="travel_a_city">울산</a>
            </div>

            <div class="travel_section" id="travel_section_01">
              <a href="#" class="travel_city"><div><span>경기도</span></div></a>
              <a href="#" class="travel_city"><div><span>강원도</span></div></a>
              <a href="#" class="travel_city"><div><span>충청북도</span></div></a>
              <a href="#" class="travel_city"><div><span>충청남도</span></div></a>
            </div>

            <div class="travel_section" id="travel_section_02">
              <a href="#" class="travel_city"><div><span>경상북도</span></div></a>
              <a href="#" class="travel_city"><div><span>경상남도</span></div></a>
              <a href="#" class="travel_city"><div><span>전라북도</span></div></a>
              <a href="#" class="travel_city"><div><span>전라남도</span></div></a>
              <a href="#" class="travel_city"><div><span>제주도</span></div></a>
            </div>

            <div class="travel_section" id="travel_section_03">
              <a href="#" class="travel_city"><div><span>경기도</span></div></a>
              <a href="#" class="travel_city"><div><span>강원도</span></div></a>
              <a href="#" class="travel_city"><div><span>충북</span></div></a>
              <a href="#" class="travel_city"><div><span>충남</span></div></a>
            </div>

            <div class="travel_section" id="travel_section_04">
              <a href="#" class="travel_city"><div><span>경북</span></div></a>
              <a href="#" class="travel_city"><div><span>경남</span></div></a>
              <a href="#" class="travel_city"><div><span>전북</span></div></a>
              <a href="#" class="travel_city"><div><span>전남</span></div></a>
              <a href="#" class="travel_city"><div><span>제주도</span></div></a>
            </div>
          </div>
        </div>
      </div>

      <div class="row mb-4">
        <div class="col-md-6">
          <h5>Photo Gallery</h5>
          <div id="Photo_BannerBox" class="row no-gutters border rounded overflow-hidden flex-md-row mb-4 shadow-sm h-md-250 position-relative">
            <div id="Photo_carousel" class="carousel slide" data-ride="carousel" data-interval="2000" pause="hover">
              <div class="carousel-inner">
                <div class="carousel-item active">
                  <img src="${pageContext.request.contextPath}/resources/main/Images/${photoBanner[0].photo_Num}.jpg" class="d-block w-100">
                </div>
                <div class="carousel-item">
                  <img src="${pageContext.request.contextPath}/resources/main/Images/${photoBanner[1].photo_Num}.jpg" class="d-block w-100">
                </div>
                <div class="carousel-item">
                  <img src="${pageContext.request.contextPath}/resources/main/Images/${photoBanner[2].photo_Num}.jpg" class="d-block w-100">
                </div>
                <div class="carousel-item">
                  <img src="${pageContext.request.contextPath}/resources/main/Images/${photoBanner[3].photo_Num}.jpg" class="d-block w-100">
                </div>
                <div class="carousel-item">
                  <img src="${pageContext.request.contextPath}/resources/main/Images/${photoBanner[4].photo_Num}.jpg" class="d-block w-100">
                </div>
				<div class="carousel-item">
                  <img src="${pageContext.request.contextPath}/resources/main/Images/${photoBanner[5].photo_Num}.jpg" class="d-block w-100">
                </div>                
                <div class="carousel-item">
                  <img src="${pageContext.request.contextPath}/resources/main/Images/${photoBanner[6].photo_Num}.jpg" class="d-block w-100">
                </div>
				<div class="carousel-item">
                  <img src="${pageContext.request.contextPath}/resources/main/Images/${photoBanner[7].photo_Num}.jpg" class="d-block w-100">
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
				<tr><td id="border_Delete"><a href="/nb/nbView?nbNum=${nbList[0].NB_Num}"><h3><font class="title_color">[공지]</font> ${nbList[0].NB_Subject}</h3></a></td></tr>
				<c:forEach items="${nbList}" var="nbList" begin="1">
					<tr><td><a href="/nb/nbView?nbNum=${nbList.NB_Num}"><font class="title_color">[공지]</font> ${nbList.NB_Subject}</a></td></tr>
				</c:forEach>
			</table>
          </div>
        </div>
        
      </div>
    </div>

  	<jsp:include page="../inc/bottom.jsp"/>
  </body>
</html>
