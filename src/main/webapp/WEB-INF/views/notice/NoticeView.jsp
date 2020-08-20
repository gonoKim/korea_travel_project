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
<meta charset="UTF-8">
<title>글 내용</title>

<script type="text/javascript">
function boardDelete(){
			
}

function NoticeUpdate(){
	
	location.href = "/notice/NoticeUpdate?NB_Num=${result.NB_Num }";
}
</script>
</head>
<body>
<div class="container">

      <header class="blog-header py-3">
        <div class="row flex-nowrap justify-content-between align-items-center">
          <div class="col-4 pt-1">
            <!-- <a class="text-muted" href="#">Subscribe</a> -->
          </div>
          <div class="col-4 text-center">
            <a class="blog-header-logo text-dark" href="index.html">Notice</a>
          </div>
          <div class="col-4 d-flex justify-content-end align-items-center">
            <a class="btn btn-sm btn-outline-secondary" href="../Sign/Sign_In/index.html" id="sign_in_btn">Sign in</a>
            <a class="btn btn-sm btn-outline-secondary" href="../Sign/Sign_Up/index.html">Sign up</a>
          </div>
        </div>
      </header>
	<nav class="navbar navbar-expand navbar-light" id="navbar_custom">
		<div class="collapse navbar-collapse justify-content-around"
			id="navbarNavDropdown">
			<a class="p-2 text-muted nav-link" href="../Main/index.html">Home</a>
			<a class="p-2 text-muted nav-link" href="../PhotoGallery/photogallery.html">Photo Gallery</a>
			<ul class="navbar-nav">
				<li class="nav-item dropdown">
			<a class="nav-link p-2 text-muted" href="#"	id="navbarDropdownMenuLink" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> Support </a>
					<div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
						<a class="dropdown-item" href="#">Notice</a> 
						<a class="dropdown-item" href="../QnA/QnA.html">QnA</a>
					</div></li>
			</ul>
			<a class="p-2 text-muted nav-link" href="../Mypage/mypage.html">MyPage</a>
		</div>
	</nav>
<form>
<table class="my-5 table table-bordered">
            <tr>
                <th class="text-center w-25 p-3">Subject: </th>
                <td scope="row">${result.NB_Subject }</td>
            </tr>
            <tr>
                <th class="text-center">Content: </th>
                <td scope="row">${result.NB_Content }</td>
            </tr>
            
            <tr>
                <th class="text-center">Views: </th>
                <td scope="row">${result.NB_Views }</td>
            </tr>
         	
</table>
<div class="row justify-content-center my-4">
                    <input type="button" value="Update" class="btn" onclick="NoticeUpdate()"/>
                     <input type="button" value="Delete" class="btn" onclick="boardDelete()"/>
                     <input type="button" value="Cancel" class="btn" onclick="javascript:location.href='NoticeBoard'"/>
                </div>
</form>
</div> 
	<footer class="blog-footer ">
		<p>
			Blog template built for <a href="https://getbootstrap.com/">Bootstrap</a>
			by <a href="https://twitter.com/mdo">@mdo</a>.
		</p>
		<p>
			<a href="#">Back to top</a>
		</p>
	</footer>
</body>
</html>