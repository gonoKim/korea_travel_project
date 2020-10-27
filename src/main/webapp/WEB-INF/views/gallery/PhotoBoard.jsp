<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/jstlHeader.jsp"%>
<!doctype html>
<html>
  <head>
    <meta charset="utf-8">
    <title>Gallery</title>
	<link rel="stylesheet" href="../../../resources/assets/dist/css/bootstrap-4.5.0.min.css">
    <link href="${pageContext.request.contextPath}/resources/assets/dist/css/mainCommon.css" rel="stylesheet">
	<script src="../../../../resources/assets/dist/js/jquery-3.5.1.min.js"></script>
	<script src="../../../resources/assets/dist/js/popper-1.16.0.min.js"></script>
	<script src="../../../resources/assets/dist/js/bootstrap-4.5.0.min.js"></script>
	<script src="../../../resources/assets/dist/js/jquery-1.11.3.min.js"></script>

  </head>

  <body>
    <div class="container">

       	<jsp:include page="../inc/top.jsp" />

      <section class="jumbotron text-center">
        <h1>Photo Gallery</h1>
        <hr class="my-4">
        <a class="btn btn-primary btn-lg" a href="/gallery/PhotoWrite" role="button">게시글 작성</a>
      </section>


      <div class="d-flex flex-row-reverse bg-white">
        <nav class="navbar navbar-light bg-white">
          <form class="form-inline">
            <input class="form-control mr-sm-2" type="search" placeholder="제목,닉네임검색" aria-label="Search">
            <button class="btn btn-primary btn-sm" type="submit">검색</button>
          </form>
        </nav>
      </div>

      <div class="album py-5 bg-white">
        <div class="container">
          <div class="row">
            <!-- 한테이블 --> 
            <c:forEach var="b" items="${result}">
			<fmt:formatDate value="${b.photo_Date}" pattern="yyyy-MM-dd HH:MM:ss" var="dateFormat_cr"/>
            <div class="col-md-4" onClick="location.href='/gallery/PhotoView?Photo_Num=${b.photo_Num }'">
              <div class="card mb-4 shadow-sm">
                <div class="container">
                  <div class="row">
                    <div class="col">
                      <small class="text-muted">${b.photo_Num }</small>
                    </div>
                    <div class="col-5">
                      <small class="text-muted">ID</small>
                    </div>
                  </div>
                </div>
                <svg class="bd-placeholder-img card-img-top" width="100%" height="225" xmlns="http://www.w3.org/2000/svg" preserveAspectRatio="xMidYMid slice" focusable="false" role="img" aria-label="Placeholder: Thumbnail"><title>Placeholder</title><rect width="100%" height="100%" fill="#55595c"/><text x="50%" y="50%" fill="#eceeef" dy=".3em">이미지</text></svg>

                <div class="card-body">
                  <p class="card-text">${b.photo_Subject }</p>
                  <div class="d-flex justify-content-between align-items-center">
                    <div class="container">
                      <div class="row">
                        <div class="col">
                            <small class="text-muted">조회수${b.photo_Views}</small>
                        </div>
                        <div class="col">
                          <small class="text-muted">${dateFormat_cr }</small>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            </c:forEach>
            
          </div>
        </div>
      </div>

      <div class="container">
        <nav aria-label="Page navigation example">
          <ul class="pagination justify-content-center">
            <li class="page-item">
              <a class="page-link" href="#" aria-label="Previous">
              <span aria-hidden="true">&laquo;</span>
              </a>
            </li>
            <li class="page-item"><a class="page-link" href="#">1</a></li>
            <li class="page-item"><a class="page-link" href="#">2</a></li>
            <li class="page-item"><a class="page-link" href="#">3</a></li>
            <li class="page-item">
              <a class="page-link" href="#" aria-label="Next">
              <span aria-hidden="true">&raquo;</span>
            </a>
            </li>
          </ul>
        </nav>
      </div>
    </div>
 	<jsp:include page="../inc/bottom.jsp" />
<!--     <footer class="blog-footer">
      <p>Blog template built for <a href="https://getbootstrap.com/">Bootstrap</a> by <a href="https://twitter.com/mdo">@mdo</a>.</p>
      <p>
        <a href="#">Back to top</a>
      </p>
    </footer> -->
  </body>
</html>
