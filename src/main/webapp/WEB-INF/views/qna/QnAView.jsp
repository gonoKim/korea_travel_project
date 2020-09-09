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
<title>글 내용</title>

<!-- 삭제할 부분 -->
<script type="text/javascript">
function boardDelete(){	
	var chk = confirm("정말 삭제하시겠습니까?");
	if (chk) {
		location.href="/qna/QnADelete?qnA_Num=${result.qnA_Num}";
			}
						}	
function QnAUpdate(){
	
	location.href = "/qna/QnAUpdate?qnA_Num=${result.qnA_Num }";
}
</script>
</head>
<body>
<div class="container">

	 	<jsp:include page="../inc/top.jsp" />
<form>
<table class="my-5 table table-bordered">
            <tr>
                <th class="text-center w-25 p-3">Subject: </th>
                <td scope="row">${result.qnA_Subject }</td>
            </tr>
             <tr>
                <th class="text-center">Writer: </th>
                <td scope="row">${result.qnA_Write }</td>
            </tr>
            <tr>
                <th class="text-center">Content: </th>
                <td scope="row">${result.qnA_Content }</td>
            </tr>
            
            <tr>
                <th class="text-center">Views: </th>
                <td scope="row">${result.qnA_Views }</td>
            </tr>
         	
</table>
<div class="row justify-content-center my-4">
                    <input type="button" value="Update" class="btn" onclick="QnAUpdate()"/>
                     <input type="button" value="Delete" class="btn" onclick="boardDelete()"/>
                     <input type="button" value="Cancel" class="btn" onclick="javascript:location.href='QnABoard'"/>
                </div>
                
</form>
</div> 
  <div class="container">
        <label for="content">comment</label>
        <form name="commentInsertForm">
            <div class="input-group">
               <input type="hidden" name="bno" value="${result.qnA_Num}"/>
               <input type="text" class="form-control" id="c_Content" name="content" placeholder="내용을 입력하세요.">
               <span class="input-group-btn">
                    <input class="btn btn-default" type="button" value="등록" onclick="commentInsert()"/>
               </span>
              </div>
        </form>
    </div>
  <div class="container">
        <div class="commentList"></div>
    </div>



<%@ include file="QnAComment.jsp" %>

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