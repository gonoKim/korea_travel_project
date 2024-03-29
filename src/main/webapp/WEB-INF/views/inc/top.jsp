<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/jstlHeader.jsp"%>
	<!-- google font --> 
	<link href="${pageContext.request.contextPath}/resources/assets/dist/css/font.css" rel="stylesheet">
	
	<script type="text/javascript">
	function festival_alert(){
		var m_Id = "${user.m_Id}";	
		
		if(m_Id != ""){
			location.href = "/Festival/FestivalPage"; 
		} else{
			alert("Please log in and use it.");
		}		
	}
	</script>

<header class="blog-header py-3 ">
	<div class="row flex-nowrap justify-content-between align-items-center">
		<div class="col-4 pt-1">
			<c:if test="${user == null}">
				<a class="btn btn-sm btn-outline-secondary" href="/user/Sign_In/login" id="sign_in_btn_left">Sign in</a>
			</c:if>
		</div>

		<div class="col-4 text-center">
			<a href="/main/main"><img src="${pageContext.request.contextPath}/resources/main/Images/Main.png" id="Main"></a>
		</div>
		
		<div class="col-4 d-flex justify-content-end align-items-center">
			<c:if test="${user == null}">
				<a class="btn btn-sm btn-outline-secondary" href="/user/Sign_In/login" id="sign_in_btn">ログイン</a>
				<a class="btn btn-sm btn-outline-secondary" href="/user/Sign_Up/register">会員加入</a>
			</c:if>
			
			<c:if test="${user != null }">
				<div>
					<button id="nickname" class="btn" disabled>${user.m_Fname} ${user.m_Lname}</button>
					<button id="logoutBtn" type="button" onClick="location.href='/user/logout'" class="btn btn-sm btn-outline-secondary">ログアウト</button>
				</div>
			</c:if>
		</div>
	</div>
</header>

<nav class="navbar navbar-expand navbar-light" id="navbar_custom">
	<div class="collapse navbar-collapse justify-content-around" id="navbarNavDropdown">
		<a class="p-2 text-muted nav-link navTitle" href="/main/main">ホーム</a>
		<a class="p-2 text-muted nav-link navTitle" style="cursor:pointer;" onclick="festival_alert()">祭り</a>
		<ul class="navbar-nav">
			<li class="nav-item dropdown">
				<a class="nav-link p-2 text-muted navTitle" href="#" id="navbarDropdownMenuLink" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> サポート </a>
				<div class="dropdown-menu navTitle" aria-labelledby="navbarDropdownMenuLink">
					<a class="dropdown-item" href="/notice/NoticeBoard">お知らせ</a>
					<a class="dropdown-item" href="/qna/QnABoard">QnA</a>
				</div>
			</li>
		</ul>
		
		<c:if test="${user.m_Grade == 'admin'}">
			<a id="myPage_btn1" class="p-2 text-muted nav-link navTitle" href="${pageContext.request.contextPath}/Festival/FestivalBoard">設定</a>
		</c:if>
		
		<c:if test="${user != null }">
			<a id="myPage_btn1" class="p-2 text-muted nav-link navTitle" href="/mypage/myPage">情報修正</a>
			<a id="myPage_btn2" class="p-2 text-muted nav-link navTitle" href="/mypage/myPage">Profile</a>
		</c:if>
	</div>
</nav>