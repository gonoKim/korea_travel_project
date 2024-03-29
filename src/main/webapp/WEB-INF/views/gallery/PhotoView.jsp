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
      <!--menu 끝-->
      <!--view 시작-->

      <section class="jumbotron text-center">
        <a class="blog-header-logo text-dark" href="./gallery.html">Photo Gallery</a>
      </section>
      <!--포토게시판 상세보기 -->
      <div class="container m-1">
          <div class="title d-flex justify-content-between">
            <h3>제목: ${result.photo_Subject }</h3>
            <div>
              <button type="button" class="btn btn-secondary btn-sm">수정</button>
              <button type="button" class="btn btn-primary btn-sm">삭제</button>
          </div>
          </div>

          <div class="d-flex bd-highlight mb-5 border-bottom text-black-50">
            <div class="mr-auto p-2 bd-highlight">ID</div>
            <div class="mr-auto p-2 bd-highlight">${result.photo_Date }</div>
            <div class="p-2 bd-highlight">조회수:${result.photo_Views }</div>

            <div class="p-2 bd-highlight">댓글2</div>
          </div>
          <!--포토게시판 내용-->
          <div class="mb-5">
          	<img src="${result.photo_ThumbImg }"><br>
            ${result.photo_Content }
          </div>


        <!--댓글 기능 -->
        <div class="container mt-5">
            <!--댓글 작성 -->
            <div class="commentwrite">
              <div class="d-flex bd-highlight">
                  <textarea class="form-control" cols="20" rows="3" name="content"></textarea>
                  <br/>
                  <button class="btn btn-primary" type="submit">댓글</button>
                </div>
            </div>
            <!--댓글 카운트 -->
            <div class="d-flex flex-row bd-highlight mb-2">
              <div class="p-2 bd-highlight"><h4>comment</h4></div>
              <div class="p-2 bd-highlight">[2]</div>
            </div>
            <!--댓글 -->
            <div class="container mb-2">
              <!--댓글 1-->
              <div class="border">
                <div class="d-flex bd-highlight">
                  <div class="p-2 flex-grow-1 bd-highlight text-primary">asu0142@naver.com</div>
                  <div class="p-2 bd-highlight">수정</div>
                  <div class="p-2 bd-highlight">삭제</div>
                </div>

                <div class="m-2">아이디가 맞으면 수정/삭제가 뜨도록 수정 할것</div>

                <div class="d-flex justify-content-start text-black-50 ml-2">
                  <div>2020.07.31 12:46:39</div>
                  <div class="ml-1">[덧글]</div>
                </div>
              </div>
              <!--댓글 2-->
              <div class="border">
                <div class="d-flex bd-highlight">
                  <div class="p-2 flex-grow-1 bd-highlight text-primary">zlub02@naver.com</div>
                  <div class="p-2 bd-highlight"></div>
                  <div class="p-2 bd-highlight"></div>
                </div>

                <div class="m-2">아이디가 안맞으면 수정/삭제 표시 없애기 </div>

                <div class="d-flex justify-content-start text-black-50 ml-2">
                  <div>2020.07.31 12:46:39</div>
                  <div class="ml-1">[덧글]</div>
                </div>
              </div>
            </div>
        </div>
      </div>
      <!--포토게시판 상세보기 끝 -->
    </div>
    <!--container 끝-->
 	<jsp:include page="../inc/bottom.jsp" />

  </body>
</html>
