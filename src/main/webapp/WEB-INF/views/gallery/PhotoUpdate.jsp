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
	<script src="../../../../resources/assets/dist/js/jquery-3.5.1.min.js"></script>
	<script src="../../../resources/assets/dist/js/popper-1.16.0.min.js"></script>
	<script src="../../../resources/assets/dist/js/bootstrap-4.5.0.min.js"></script>
	<script src="../../../resources/assets/dist/js/jquery-1.11.3.min.js"></script>
</head>    
<body class="container-md vh-100 ">
    <article class="container row justify-content-center align-items-center" >     
        <div class="col-sm-6 col-md-offset-3 " id="join">
            <form id="broad-make" class="form" action="./photogallery.html" method="post">
                <div class=" text-center text-dark pt-5 " id="join">
                    <h3 >포토 게시판</h3>
                    </div>
                    <!-- 수정필요 -->
                <div class="form-group text-dark">
                    <label for="inputName">Title</label>
                    <input type="text" class="form-control " id="inputName" placeholder="제목을 입력해 주세요">
                </div>
                <div class="form-group text-dark">
                    <label for="inputPassword">비밀번호</label>
                    <input type="password" class="form-control" id="inputPassword" placeholder="비밀번호를 입력해주세요">
                </div>
                
                <div class="form-group text-dark">
                    <label for="inputtelNO">내용</label>
                    <textarea name="message" rows="10" cols="20" class="form-control" id="inputtelNO"  placeholder="내용를 입력해 주세요"></textarea>
                </div>
                <input type="file" name="img" class="mb-4" id="img" accept=".jpg, .jpeg, .png">


                <div class="form-group row">

                    <div class="col-md-4">
                    <button type="reset" id="join-submit" class="btn btn-primary text-white ">
                        	초기화<i class="fa fa-check spaceLeft"></i>
                    </button>   
                </div>
                <div class="col-md-4 offset-md-4">
                    
                    <button type="submit" id="join-submit" class="btn btn-primary text-white">
                        	글쓰기<i class="fa fa-check spaceLeft"></i>
                    </button>
                    
                    <button type="submit" class="btn btn-primary text-white" onClick="location.href='gallery.html'">
                      	취소
                    </button>
          
                </div>
            
            </div>
            </form>
        </div>

    </article>
    <jsp:include page="../inc/bottom.jsp" />
</body>
</html>