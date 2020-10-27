<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/jstlHeader.jsp"%>
<%
	pageContext.setAttribute("br", "<br/>");
	pageContext.setAttribute("cn", "\n");
%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/dist/css/bootstrap-4.5.0.min.css">
<link href="${pageContext.request.contextPath}/resources/assets/dist/css/mainCommon.css" rel="stylesheet">
<script src="${pageContext.request.contextPath}/resources/assets/dist/js/jquery-3.5.1.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/assets/dist/js/popper-1.16.0.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/assets/dist/js/bootstrap-4.5.0.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/assets/dist/js/jquery-1.11.3.min.js"></script>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=883ba49f0880eb3e3f4631a8be0e962e&libraries=services"></script>

<link href="${pageContext.request.contextPath}/resources/festival/css/pageview.css"	rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/assets/dist/css/font.css" rel="stylesheet">

	
<meta charset="UTF-8">
<title>Festival View Page</title>
</head>
<body>
<div class="container text-center">
<c:set var="page" value="${fResult}" />
<c:set var="img" value="${fIResult}" />
<div class=" justify-content-center">
<div class="row">
<div class="col my-4"><h1 id="festivalviewfont">${page.f_Subject}</h1></div>
</div>
<div class="row my-3">
<div class="col-xl-5"><img src="${pageContext.request.contextPath}/resources/imgUpload/festivalImg/${img.STORED_FILE_NAME}" class="rounded" id="img"></div>
<div class="col-xl-7 my-4 festivalviewContent" id="festivalviewfont"><b>内容 : </b>${fn:replace(page.f_Content, cn, br)}</div>
</div>
<div class="row">
<div class="col my-3" id="festivalviewfont"><b>開始日 : </b>${page.f_S_Year}-${page.f_S_Month}-${page.f_S_Day}<br>
				<b>終わる日 : </b>${page.f_L_Year}-${page.f_L_Month}-${page.f_L_Day}
</div>
</div>
<c:if test="${page.f_Address != '' }">
<div class="row">
<div class="col my-3" id="festivalviewfont"><b>住所 : </b>${page.f_Address}</div>
</div>

<div class="row">
<!-- 카카오 지도 -->
<div id="map" style="width:100%;height:350px;"></div>
<!-- 카카오 지도 div가 먼저 생성되고 지도 스크립트 실행해야함 -->
<script>
var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
mapOption = {
    center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
    level: 3 // 지도의 확대 레벨
};  

//지도를 생성합니다    
var map = new kakao.maps.Map(mapContainer, mapOption); 

//주소-좌표 변환 객체를 생성합니다
var geocoder = new kakao.maps.services.Geocoder();
//주소로 좌표를 검색합니다
geocoder.addressSearch("${page.f_Address}", function(result, status) {

// 정상적으로 검색이 완료됐으면 
 if (status === kakao.maps.services.Status.OK) {

    var coords = new kakao.maps.LatLng(result[0].y, result[0].x);

    // 결과값으로 받은 위치를 마커로 표시합니다
    var marker = new kakao.maps.Marker({
        map: map,
        position: coords
    });

    // 인포윈도우로 장소에 대한 설명을 표시합니다
    var infowindow = new kakao.maps.InfoWindow({
        content: '<div style="width:150px;text-align:center;padding:6px 0;">축제 지역</div>'
    });
    infowindow.open(map, marker);

    // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
    map.setCenter(coords);
} 
});    
	</script>
</div> 
</c:if>
<c:if test="${page.f_Address == '' }">
<div class="row">
<div class="col my-3" id="festivalviewfont"><b>オンライン祭り</b></div>
</div>
</c:if>
	<input type="button" value="Cancel" class="btn my-5" onclick="window.close();" />
	</div>
</div>
</body>
</html>