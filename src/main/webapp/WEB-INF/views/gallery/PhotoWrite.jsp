<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/jstlHeader.jsp"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
<link rel="stylesheet" href="../../../resources/assets/dist/css/bootstrap-4.5.0.min.css">
<link href="${pageContext.request.contextPath}/resources/assets/dist/css/mainCommon.css" rel="stylesheet">
<script src="../../../resources/assets/dist/js/jquery-3.5.1.min.js"></script>
<script src="../../../resources/assets/dist/js/popper-1.16.0.min.js"></script>
<script src="../../../resources/assets/dist/js/bootstrap-4.5.0.min.js"></script>
<script src="../../../resources/assets/dist/js/jquery-1.11.3.min.js"></script>


<script src="../../../resources/photoBoard/js/PhotoWrite.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

</head>
<body class="container-md vh-100 ">
    <article class="container row justify-content-center align-items-center" >


      <div class="col-sm-6 col-md-offset-3 " >
         <form role="form" method="post" autocomplete="off" enctype="multipart/form-data">
			<table>
        		<caption>게시판 글쓰기 </caption>
    			<tbody>
            		<tr>
                		<th>제목: </th>
                		<td><input type="text" placeholder="제목을 입력하세요. " id="subject" name="Photo_Subject"/></td>
            		</tr>
            		<tr>
                		<th>내용: </th>
                		<td><textarea cols="30" rows="10" placeholder="내용을 입력하세요. " id="content" name="Photo_Content"></textarea></td>
            		</tr>
           	<!--  <tr>
                	<th>첨부파일: </th>
                	<td><input type="text" placeholder="파일을 선택하세요. " name="filename"/></td>
            		</tr> -->
            		
            		<!-- 200922s -->
            		<tr class="inputArea">
					 <th for="gdsImg">이미지</th>
					 <td><input type="file" id="gdsImg" name="file" />
					 <div class="select_img"><img src="" /></div>
					 
					 <script>
					  $("#gdsImg").change(function(){
					   if(this.files && this.files[0]) {
					    var reader = new FileReader;
					    reader.onload = function(data) {
					     $(".select_img img").attr("src", data.target.result).width(500);        
					    }
					    reader.readAsDataURL(this.files[0]);
					   }
					  });
					 </script>
					 
					 <%=request.getRealPath("/") %>
					</td>
					</tr>
					<!-- 200922e -->

            		<tr>
                		<td colspan="2">
                			<button type="submit" id="register_Btn" class="btn btn-primary">등록</button>
                    		<!-- <input type="button" value="등록" onclick="boardValidation()"/> -->
                    		<input type="button" value="뒤로" onclick="javascript:location.href='PhotoBoard'"/>
                		</td>
            		</tr>
    			</tbody>
			</table>
		</form>
	</div>

    </article>
 	<jsp:include page="../inc/bottom.jsp" />

</body>
</html>
