<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/jstlHeader.jsp"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
<link rel="stylesheet" href="../../../resources/assets/dist/css/bootstrap-4.5.0.min.css">
<link rel="stylesheet" href="../../../resources/assets/dist/css/area.css">
<link rel="stylesheet" href="../../../resources/assets/dist/css/blog.css" >
<script src="../../../resources/assets/dist/js/jquery-3.5.1.min.js"></script>
<script src="../../../resources/assets/dist/js/popper-1.16.0.min.js"></script>
<script src="../../../resources/assets/dist/js/bootstrap-4.5.0.min.js"></script>
<script src="../../../resources/assets/dist/js/jquery-1.11.3.min.js"></script>


<!--QnA 커스텀 css, js  -->
<link rel="stylesheet" href="../../../resources/QnA/css/broad.css">
<!--로컬 js 오류남  -->
<!--  <script src="../../../resources/QnA/js/jquery.min.js"></script> -->
<!-- <script src="../../../resources/QnA/js/QnAwrite.js"></script> -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

</head>    
<body class="container-md vh-100 ">
    <article class="container row justify-content-center align-items-center" >
      
          
        <div class="col-sm-10 col-md-offset-3 " >
          <form method="post" action="FestivalWrite" enctype="multipart/form-data">
                <div class=" text-center text-dark pt-5 " >
                	<h2 class="my-3">Festival Information</h2>
                </div>

                <h4 class="my-3">Subject</h4>
                <input type="text" class="form-control text-dark" id="subject" name="F_Subject" placeholder="제목을 입력해 주세요">
       
                <h4 class="my-3">Content</h4>
                <textarea rows="10" cols="20" class="form-control text-dark" id="content" name="F_Content" placeholder="내용를 입력해 주세요"></textarea>
                  
                <h4 class="my-3">Place</h4>
                <input type="text" class="form-control text-dark" id="place" name="F_Place" placeholder="지역를 입력해 주세요">

                <h4 class="my-3">Address</h4>
                <input type="text" class="form-control text-dark" id="address" name="F_Address" placeholder="주소를 입력해 주세요">
                
                <h4 class="my-3">File Upload</h4>
				<input type="file" name="file">					 
                
                <div class="row justify-content-center my-4">
                    <button type="reset" id="join-submit" class="btn">
                        Reset<i class="fa fa-check spaceLeft"></i>
                    </button>
                     <button type="submit" class="btn">작성</button>
                     <input type="button" value="Cancel" class="btn" onclick="window.close();"/>
                </div>
			</form>
        </div>
    </article>
 	<%-- <jsp:include page="../inc/bottom.jsp" /> --%>

</body>
</html>