<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
      <header class="blog-header py-3">
        <div class="row flex-nowrap justify-content-between align-items-center">
          <div class="col-4 pt-1">
            <!-- <a class="text-muted" href="#">Subscribe</a> -->
          </div>
          <div class="col-4 text-center">
            <a class="blog-header-logo text-dark" href="index.html">QnA</a>
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
</body>
</html>