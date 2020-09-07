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
<link rel="stylesheet" href="../../../resources/assets/dist/css/area.css">
<link rel="stylesheet" href="../../../resources/assets/dist/css/blog.css" >
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
         <form>
			<table>
        		<caption>게시판 글쓰기 </caption>
    			<tbody>
            		<tr>
                		<th>제목: </th>
                		<td><input type="text" placeholder="제목을 입력하세요. " id="subject"/></td>
            		</tr>
            		<tr>
                		<th>내용: </th>
                		<td><textarea cols="30" rows="10" placeholder="내용을 입력하세요. " id="content"></textarea></td>
            		</tr>
           	<!--  <tr>
                	<th>첨부파일: </th>
                	<td><input type="text" placeholder="파일을 선택하세요. " name="filename"/></td>
            		</tr> -->
            		<tr>
                		<td colspan="2">
                    		<input type="button" value="등록" onclick="boardValidation()"/>
                    		<input type="button" value="뒤로" onclick="javascript:location.href='PhotoBoard'"/>
                		</td>
            		</tr>
    			</tbody>
			</table>
		</form>
	</div>

    </article>
 	<jsp:include page="../inc/bottom.jsp" />
<!--     	<footer class="blog-footer ">
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
