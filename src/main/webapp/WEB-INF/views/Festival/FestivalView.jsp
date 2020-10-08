<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/jstlHeader.jsp" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="../../../resources/assets/dist/css/bootstrap-4.5.0.min.css">
<link rel="stylesheet" href="../../../resources/assets/dist/css/area.css">
<link rel="stylesheet" href="../../../resources/assets/dist/css/blog.css" >
<script src="../../../../resources/assets/dist/js/jquery-3.5.1.min.js"></script>
<script src="../../../resources/assets/dist/js/popper-1.16.0.min.js"></script>
<script src="../../../resources/assets/dist/js/bootstrap-4.5.0.min.js"></script>
<script src="../../../resources/assets/dist/js/jquery-1.11.3.min.js"></script>
   
   <!--QnA 커스텀 css, js  -->
<link rel="stylesheet" href="../../../resources/QnA/css/broad_view.css">
<!-- <script src="../../../resources/QnA/js/QnAView.js"></script> -->
<meta charset="UTF-8">
<title>FestivalView</title>

<!-- 삭제할 부분 -->
<script type="text/javascript">
function FestivalUpdate(){
	location.href = "/Festival/FestivalUpdate?f_Num=${fResult.f_Num}";
}
						
</script>
</head>
<body>
<div class="container">

<form>

<table class="my-5 table table-bordered">
            <tr>
                <th class="text-center w-25 p-3">Subject: </th>
                <td scope="row">${fResult.f_Subject }</td>
            </tr>
             <tr>
                <th class="text-center">장소 코드: </th>
                <td scope="row">${fResult.place_Code }</td>
            </tr>
                    <tr>
                <th class="text-center">Summary: </th>
                <td scope="row">${fResult.f_Summary}</td>
            </tr>
            <tr>
                <th class="text-center">Content: </th>
                <td scope="row">${fResult.f_Content }</td>
            </tr>
    
            <tr>
                <th class="text-center">Address: </th>
                <td scope="row">${fResult.f_Address }</td>
            </tr>
            <tr>
                <th class="text-center">Content: </th>
                <td scope="row">시작일 : ${fResult.f_S_Year}-${fResult.f_S_Month}-${fResult.f_S_Day}<br>
				끝나는일 : ${fResult.f_L_Year}-${fResult.f_L_Month}-${fResult.f_L_Day}</td>
            </tr>
            
            
</table>
<div class="row justify-content-center my-4">
					<input type="button" value="Update" class="btn" onclick="FestivalUpdate();"/>
                    <input type="button" value="Cancel" class="btn" onclick="window.close();"/>
                </div>
                
</form>
</div> 


</body>
</html>