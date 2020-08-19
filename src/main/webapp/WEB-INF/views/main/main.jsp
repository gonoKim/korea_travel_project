<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!doctype html>
<html lang="ko">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Jekyll v4.0.1">
    <title>Main</title>

    <!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script> -->
    
    <link rel="canonical" href="${pageContext.request.contextPath}/resources/assets/dist/css/bootstrap-4.5.0.min.css">
    <script src="${pageContext.request.contextPath}/resources/assets/dist/js/jquery-3.5.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/assets/dist/js/popper-1.16.0.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/assets/dist/js/bootstrap-4.5.0.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/assets/dist/js/jquery-1.11.3.min.js"></script>

    <!-- Bootstrap core CSS -->
    <link href="${pageContext.request.contextPath}/resources/assets/dist/css/bootstrap.css" rel="stylesheet">
    
    <!-- Custom styles for this template -->
    <link rel="canonical" href="${pageContext.request.contextPath}/resources/assets/dist/css/font-css.css">

    <!-- Custom styles for this template -->
    <link href="${pageContext.request.contextPath}/resources/main/css/area.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/main/css/blog.css" rel="stylesheet">
  </head>

  <body>
    <div class="container">
      <header class="blog-header py-3">
        <div class="row flex-nowrap justify-content-between align-items-center">
	      <div class="col-4 pt-1">
	      	<c:if test="${user == null}">
	            <a class="btn btn-sm btn-outline-secondary" href="/user/Sign_In/login" id="sign_in_btn_left">Sign in</a>
           	</c:if>
	      </div>
	      
          <div class="col-4 text-center">
            <a class="blog-header-logo text-dark" href="/main/main">Main</a>
          </div>
          <div class="col-4 d-flex justify-content-end align-items-center">
          	<c:if test="${user == null}">
	            <a class="btn btn-sm btn-outline-secondary" href="/user/Sign_In/login" id="sign_in_btn">Sign in</a>
	            <a class="btn btn-sm btn-outline-secondary" href="/user/Sign_Up/register">Sign up</a>
	        </c:if>
			<c:if test="${user != null }">
				<div>
					<button id="nickname" class="btn" disabled>${user.m_Fname} ${user.m_Lname}</button>
					<button id="logoutBtn" type="button" onClick="location.href='/user/logout'" class="btn btn-sm btn-outline-secondary">Logout</button>
				</div>
			</c:if>
          </div>
        </div>
      </header>
      
      <nav class="navbar navbar-expand navbar-light" id="navbar_custom">
        <div class="collapse navbar-collapse justify-content-around" id="navbarNavDropdown">
          <a class="p-2 text-muted nav-link" href="../Main/index.html">Home</a>
          <a class="p-2 text-muted nav-link" href="../Menu/Gallery/gallery.html">Gallery</a>
          <ul class="navbar-nav">
            <li class="nav-item dropdown">
              <a class="nav-link p-2 text-muted" href="#" id="navbarDropdownMenuLink" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                Support
              </a>
              <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                <a class="dropdown-item" href="#">Notice</a>
                <a class="dropdown-item" href="../Menu/Support/QnA/QnA.html">QnA</a>
              </div>
            </li>
          </ul>
          <a class="p-2 text-muted nav-link" href="../Menu/Mypage/my_page.html">My Page</a>
        </div>
      </nav>


      <div id="Banner_carousel" class="carousel slide" data-ride="carousel" data-interval="3000" pause="hover">
        <ol class="carousel-indicators">
          <li data-target="#Banner_carousel" data-slide-to="0" class="active"></li>
          <li data-target="#Banner_carousel" data-slide-to="1"></li>
          <li data-target="#Banner_carousel" data-slide-to="2"></li>
          <li data-target="#Banner_carousel" data-slide-to="3"></li>
        </ol>
        <div class="carousel-inner">
          <div class="carousel-item active">
            <img class="d-block w-100" src="${pageContext.request.contextPath}/resources/main/Images/1.jpg" alt="First slide">
          </div>
          <div class="carousel-item">
            <img class="d-block w-100" src="${pageContext.request.contextPath}/resources/main/Images/2.jpg" alt="Second slide">
          </div>
          <div class="carousel-item">
            <img class="d-block w-100" src="${pageContext.request.contextPath}/resources/main/Images/3.jpg" alt="Third slide">
          </div>
          <div class="carousel-item">
            <img class="d-block w-100" src="${pageContext.request.contextPath}/resources/main/Images/4.jpg" alt="fourth slide">
          </div>
        </div>
        <a class="carousel-control-prev" href="#Banner_carousel" role="button" data-slide="prev">
          <span class="carousel-control-prev-icon" aria-hidden="true"></span>
          <span class="sr-only">Previous</span>
        </a>
        <a class="carousel-control-next" href="#Banner_carousel" role="button" data-slide="next">
          <span class="carousel-control-next-icon" aria-hidden="true"></span>
          <span class="sr-only">Next</span>
        </a>
      </div>

      <div class="area_silver" id="Area_page">
        <div class="wrap">
          <div class="area_title">국내 축제</div>
          <div class="travel_box">
            <div class="travel_section">
              <div class="travel_left">주요도시</div>
              <a href="../Menu/Festival/festival.html" class="travel_a_city">서울</a>
              <a href="../Menu/Festival/festival.html" class="travel_a_city">인천</a>
              <a href="../Menu/Festival/festival.html" class="travel_a_city">부산</a>
              <a href="../Menu/Festival/festival.html" class="travel_a_city">대구</a>
              <a href="../Menu/Festival/festival.html" class="travel_a_city">광주</a>
              <a href="../Menu/Festival/festival.html" class="travel_a_city">대전</a>
              <a href="../Menu/Festival/festival.html" class="travel_a_city">울산</a>
              <a href="../Menu/Festival/festival.html" class="travel_a_city">제주도</a>
            </div>

            <div class="travel_section" id="travel_section_01">
              <a href="#" class="travel_city" data-on="off" data-show="link"><div><span>경기도</span></div></a>
              <a href="#" class="travel_city" data-on="off" data-show="link"><div><span>강원도</span></div></a>
              <a href="#" class="travel_city" data-on="off" data-show="link"><div><span>충청북도</span></div></a>
              <a href="#" class="travel_city" data-on="off" data-show="link"><div><span>충청남도</span></div></a>
              <a href="#" class="travel_city" data-on="off" data-show="link"><div><span>경상북도</span></div></a>
            </div>

            <div class="travel_section" id="travel_section_02">
              <a href="#" class="travel_city" data-on="off" data-show="link"><div><span>경상남도</span></div></a>
              <a href="#" class="travel_city" data-on="off" data-show="link"><div><span>전라북도</span></div></a>
              <a href="#" class="travel_city" data-on="off" data-show="link"><div><span>전라남도</span></div></a>
              <a href="#" class="travel_city" data-on="off" data-show="link"><div><span>충청남도</span></div></a>
            </div>
          </div>
        </div>
      </div>

      <div class="row mb-4">
        <div class="col-md-6">
          <h5>Photo Gallery</h5>
          <div class="row no-gutters border rounded overflow-hidden flex-md-row mb-4 shadow-sm h-md-250 position-relative" id="A1">
            <div id="Photo_carousel" class="carousel slide" data-ride="carousel" data-interval="2000" pause="hover">
              <div class="carousel-inner">
                <div class="carousel-item active">
                  <img src="${pageContext.request.contextPath}/resources/main/Images/5.jpg" class="d-block w-100">
                </div>
                <div class="carousel-item">
                  <img src="${pageContext.request.contextPath}/resources/main/Images/6.jpg" class="d-block w-100">
                </div>
                <div class="carousel-item">
                  <img src="${pageContext.request.contextPath}/resources/main/Images/7.jpg" class="d-block w-100">
                </div>
  
                <div class="carousel-item">
                  <img src="${pageContext.request.contextPath}/resources/main/Images/8.jpg" class="d-block w-100">
                </div>
              </div>
              <a class="carousel-control-prev" href="#Photo_carousel" role="button" data-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
              </a>
              <a class="carousel-control-next" href="#Photo_carousel" role="button" data-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
              </a>
            </div>
          </div>
        </div>
        
        <div class="col-md-6">
          <h5>Notice</h5>
          <div class="row no-gutters border rounded overflow-hidden flex-md-row mb-4 shadow-sm h-md-250 position-relative" id="A2">
              <h1>공지사항</h1>
          </div>
        </div>
      </div>
    </div>

    <footer class="blog-footer">
      <p>Blog template built for <a href="https://getbootstrap.com/">Bootstrap</a> by <a href="https://twitter.com/mdo">@mdo</a>.</p>
      <p>
        <a href="#">Back to top</a>
      </p>
    </footer>
  </body>
</html>
