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

    

  </head>
  
  <body>
    <div class="container">


    <!-- nav -->  
     <jsp:include page="../inc/top.jsp" />
     
     <!-- 이미지 경로  -->
 	<%-- <%=request.getRealPath("/") %>  --%>
 	<%-- <%=request.getRealPath("/resources/imgUpload/festivalImg") %>  --%>

      ​<picture id="picture_group">
      <!-- 이미지 경로 -->
        <img src="<%=request.getRealPath("/resources/imgUpload/festivalImg/") %>${fResult[0].STORED_FILE_NAME}" class="rounded-left mx-auto">
        <img src="<%=request.getRealPath("/resources/imgUpload/festivalImg/") %>${fResult[1].STORED_FILE_NAME}" class="mg-fluid mx-auto">
        <img src="<%=request.getRealPath("/resources/imgUpload/festivalImg/") %>${fResult[2].STORED_FILE_NAME}" class="mg-fluid mx-auto">
        <img src="<%=request.getRealPath("/resources/imgUpload/festivalImg/") %>${fResult[3].STORED_FILE_NAME}" class="rounded-right mx-auto">
      </picture>
      
        <div class="area_silver" id="Area_page">
        <div class="wrap">
          <div class="area_title">국내 축제</div>
          <div class="travel_box">
            <div class="travel_section" id="travel_section_00">
              <div class="travel_left">주요도시</div>
              <a href="/Festival/FestivalPage?place_Code=1" class="travel_a_city">서울</a>
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

                  <div class="containercollapse multi-collapse" id="multiCollapseExample">
        <table  class="row justify-content-center">
       	<c:forEach var="P" items="${pageResult}">
			 	<tbody class="col-4 mx-3">
            <tr>
                    <th colspan="2" >${p.f_Subject}</th>
                  </tr>
                  <tr>
                    <td rowspan="3"><img src="images/06.jpg" class="card-img">이미지</td>
                    <td >${p.f_Content}</td>
                  </tr>
                  <tr>
                    <td>${p.f_Address}</td>
                  </tr>
                  <tr>
                    <td>시작일 : ${p.f_S_Year}-${p.f_S_Month}-${p.f_S_Day}<br>
                    	끝나는일 : ${p.f_L_Year}${p.f_L_Month}${p.f_L_Day}
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
