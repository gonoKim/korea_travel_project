<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/jstlHeader.jsp"%>
    
<header class="blog-header py-3">
      <div class="row flex-nowrap justify-content-between align-items-center">
        <div class="col-4 pt-1">
          <!-- <a class="text-muted" href="#">Subscribe</a> -->
        </div>
        <div class="col-4 text-center">
          <a class="blog-header-logo text-dark" href="../../Main/index.html">Main</a>
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
        <a class="p-2 text-muted nav-link" href="../../Main/index.html">Home</a>
        <a class="p-2 text-muted nav-link" href="../Gallery/gallery.html">Gallery</a>
        <ul class="navbar-nav">
          <li class="nav-item dropdown">
            <a class="nav-link p-2 text-muted" href="#" id="navbarDropdownMenuLink" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
              Support
            </a>
            <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
              <a class="dropdown-item" href="#">Notice</a>
              <a class="dropdown-item" href="../Support/QnA/QnA.html">QnA</a>
            </div>
          </li>
        </ul>
        <a class="p-2 text-muted nav-link" href="../Mypage/my_page.html">MyPage</a>
      </div>
    </nav>