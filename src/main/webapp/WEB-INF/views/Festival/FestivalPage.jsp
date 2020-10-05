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
        <img src="${pageContext.request.contextPath}/resources/imgUpload/festivalImg/${fResult[0].STORED_FILE_NAME}" class="rounded-left mx-auto">
        <img src="${pageContext.request.contextPath}/resources/imgUpload/festivalImg/${fResult[1].STORED_FILE_NAME}" class="mg-fluid mx-auto">
        <img src="${pageContext.request.contextPath}/resources/imgUpload/festivalImg/${fResult[2].STORED_FILE_NAME}" class="mg-fluid mx-auto">
        <img src="${pageContext.request.contextPath}/resources/imgUpload/festivalImg/${fResult[3].STORED_FILE_NAME}" class="rounded-right mx-auto">
      </picture>
      
    <!-- 장소 코드 
							서울특별시(001)부산광역시(002)대구광역시(003)인천광역시(004)대전광역시(005)광주광역시(006)울산광역시(007)
							경기도(011)강원도(012)충청남도(013)충청북도(014)전라남도(015)전라북도(016)경상남도(017)경상북도(018)
							세종특별자치시(101)\n제주특별자치도(102) -->
        <div class="area_silver" id="Area_page">
        <div class="wrap">
          <div class="area_title">국내 축제</div>
          <div class="travel_box">
            <div class="travel_section" id="travel_section_00">
              <div class="travel_left">주요도시</div>
              <a href="/Festival/FestivalPage?place_Code=1" class="travel_a_city">서울</a>
              <a href="/Festival/FestivalPage?place_Code=2" class="travel_a_city">부산</a>
              <a href="/Festival/FestivalPage?place_Code=3" class="travel_a_city">대구</a>
              <a href="/Festival/FestivalPage?place_Code=4" class="travel_a_city">인천</a>
              <a href="/Festival/FestivalPage?place_Code=5" class="travel_a_city">대전</a>
              <a href="/Festival/FestivalPage?place_Code=6" class="travel_a_city">광주</a>
              <a href="/Festival/FestivalPage?place_Code=7" class="travel_a_city">울산</a>
             
            </div>

            <div class="travel_section" id="travel_section_01">
              <a href="/Festival/FestivalPage?place_Code=11" class="travel_city"><div><span>경기도</span></div></a>
              <a href="/Festival/FestivalPage?place_Code=12" class="travel_city"><div><span>강원도</span></div></a>
              <a href="/Festival/FestivalPage?place_Code=14" class="travel_city"><div><span>충청남도</span></div></a>
              <a href="/Festival/FestivalPage?place_Code=13" class="travel_city"><div><span>충청북도</span></div></a>
            </div>

            <div class="travel_section" id="travel_section_02">
              <a href="/Festival/FestivalPage?place_Code=15" class="travel_city"><div><span>전라남도</span></div></a>
              <a href="/Festival/FestivalPage?place_Code=16" class="travel_city"><div><span>전라북도</span></div></a>
              <a href="/Festival/FestivalPage?place_Code=17" class="travel_city"><div><span>경상남도</span></div></a>
              <a href="/Festival/FestivalPage?place_Code=18" class="travel_city"><div><span>경상북도</span></div></a>
               <a href="/Festival/FestivalPage?place_Code=102" class="travel_a_city"><div><span>제주도</span></div></a>
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
                    <th colspan="2" >${p.F_Subject}</th>
                  </tr>
                  <tr>
                    <td rowspan="3"><img src="images/06.jpg" class="card-img">이미지</td>
                    <td >${p.F_Content}</td>
                  </tr>
                  <tr>
                    <td>${p.F_Address}</td>
                  </tr>
                  <tr>
                    <td>시작일 : ${p.F_S_Year}-${p.f_S_Month}-${p.F_S_Day}<br>
                    	끝나는일 : ${p.f_L_Year}${p.F_L_Month}${p.F_L_Day}
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
