<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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

 <!-- Bootstrap core CSS -->
    <link href="${pageContext.request.contextPath}/resources/assets/dist/css/bootstrap.css" rel="stylesheet">
    
    <!-- Custom styles for this template -->
    <link rel="canonical" href="${pageContext.request.contextPath}/resources/assets/dist/css/font-css.css">
    <link href="${pageContext.request.contextPath}/resources/main/css/area.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/main/css/blog.css" rel="stylesheet">

    <!-- js -->
    
    <!-- <link href="https://fonts.googleapis.com/css?family=Playfair+Display:700,900" rel="stylesheet"> -->
    <link rel="canonical" href="../../assets/dist/css/font-css.css">

    <!-- Custom styles for this template -->
    <link href="assets/css/area.css" rel="stylesheet">
    <link href="assets/css/blog.css" rel="stylesheet">
  </head>
  
  <body>
    <div class="container">


    <!-- nav -->  
     <jsp:include page="../inc/top.jsp" />
     
     <!-- 이미지 경로  -->
<%--  <%=request.getRealPath("/") %> --%>
     
      ​<picture id="picture_group">
        <img src="images/01.jpg" class="rounded-left mx-auto">
        <img src="images/02.jpg" class="mg-fluid mx-auto">
        <img src="images/03.jpg" class="mg-fluid mx-auto">
        <img src="images/04.jpg" class="rounded-right mx-auto">
      </picture>
      
        <div class="area_silver" id="Area_page">
        <div class="wrap">
          <div class="area_title">국내 축제</div>
          <div class="travel_box">
            <div class="travel_section" id="travel_section_00">
              <div class="travel_left">주요도시</div>
              <a href="#" class="travel_a_city">서울</a>
              <a href="#" class="travel_a_city">인천</a>
              <a href="#" class="travel_a_city">부산</a>
              <a href="#" class="travel_a_city">대구</a>
              <a href="#" class="travel_a_city">광주</a>
              <a href="#" class="travel_a_city">대전</a>
              <a href="#" class="travel_a_city">울산</a>
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

      <div id="btn_view_more">
        <p>
          <button class="btn btn-sm btn-outline-secondary" type="button" data-toggle="collapse" data-target=".multi-collapse" aria-expanded="false" aria-controls="multiCollapseExample1 multiCollapseExample2">View More</button>
        </p>
      </div>
      
      <div id="view_more">
        <div class="row Interval">
          <div class="col">
            <div class="collapse multi-collapse" id="multiCollapseExample">
              <div class="card mb-3" style="max-width: 540px;">
                <div class="row no-gutters">
                  <div class="col-md-4">
                    <img src="images/05.jpg" class="card-img">
                  </div>
                  <div class="col-md-8">
                    <div class="card-body">
                      <h5 class="card-title">festival name</h5>
                      <p class="card-text">Content</p>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>

          <div class="col">
            <div class="collapse multi-collapse" id="multiCollapseExample">
              <div class="card mb-3" style="max-width: 540px;">
                <div class="row no-gutters">
                  <div class="col-md-4">
                    <img src="images/06.jpg" class="card-img">
                  </div>
                  <div class="col-md-8">
                    <div class="card-body">
                      <h5 class="card-title">festival name</h5>
                      <p class="card-text">Content</p>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>

        <div class="row Interval">
          <div class="col">
            <div class="collapse multi-collapse" id="multiCollapseExample">
              <div class="card mb-3" style="max-width: 540px;">
                <div class="row no-gutters">
                  <div class="col-md-4">
                    <img src="images/07.jpg" class="card-img">
                  </div>
                  <div class="col-md-8">
                    <div class="card-body">
                      <h5 class="card-title">festival name</h5>
                      <p class="card-text">Content</p>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>

          <div class="col">
            <div class="collapse multi-collapse" id="multiCollapseExample">
              <div class="card mb-3" style="max-width: 540px;">
                <div class="row no-gutters">
                  <div class="col-md-4">
                    <img src="images/08.jpg" class="card-img">
                  </div>
                  <div class="col-md-8">
                    <div class="card-body">
                      <h5 class="card-title">festival name</h5>
                      <p class="card-text">Content</p>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>

        <div class="row Interval">
          <div class="col">
            <div class="collapse multi-collapse" id="multiCollapseExample">
              <div class="card mb-3" style="max-width: 540px;">
                <div class="row no-gutters">
                  <div class="col-md-4">
                    <img src="images/09.jpg" class="card-img">
                  </div>
                  <div class="col-md-8">
                    <div class="card-body">
                      <h5 class="card-title">festival name</h5>
                      <p class="card-text">Content</p>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>

          <div class="col">
            <div class="collapse multi-collapse" id="multiCollapseExample">
              <div class="card mb-3" style="max-width: 540px;">
                <div class="row no-gutters">
                  <div class="col-md-4">
                    <img src="images/10.jpg" class="card-img">
                  </div>
                  <div class="col-md-8">
                    <div class="card-body">
                      <h5 class="card-title">Card title</h5>
                      <p class="card-text">Content</p>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- footer -->
<%-- 	<jsp:include page="../inc/bottom.jsp" /> --%>
  </body>
</html>
