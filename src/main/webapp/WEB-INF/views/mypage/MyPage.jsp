<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/jstlHeader.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MyPage</title>
<link rel="stylesheet" href="../../../resources/assets/dist/css/bootstrap-4.5.0.min.css">
<link rel="stylesheet" href="../../../resources/assets/dist/css/area.css">
<link rel="stylesheet" href="../../../resources/assets/dist/css/blog.css" >
<script src="../../../../resources/assets/dist/js/jquery-3.5.1.min.js"></script>
<script src="../../../resources/assets/dist/js/popper-1.16.0.min.js"></script>
<script src="../../../resources/assets/dist/js/bootstrap-4.5.0.min.js"></script>
<script src="../../../resources/assets/dist/js/jquery-1.11.3.min.js"></script>

<link rel="stylesheet" href="../../../resources/MyPage/css/blog.css" >
<link rel="stylesheet" href="../../../resources/MyPage/css/mypage.css" >
<script src="../../../resources/MyPage/mypage.js"></script>
</head>
<body>
  <div class="container">

    <header class="blog-header py-3">
      <div class="row flex-nowrap justify-content-between align-items-center">
        <div class="col-4 pt-1">
          <!-- <a class="text-muted" href="#">Subscribe</a> -->
        </div>
        <div class="col-4 text-center">
          <a class="blog-header-logo text-dark" href="../../Main/index.html">Main</a>
        </div>
        <div class="col-4 d-flex justify-content-end align-items-center">
          <a class="btn btn-sm btn-outline-secondary" href="../../Sign/Sign_In/index.html" id="sign_in_btn">Sign in</a>
          <a class="btn btn-sm btn-outline-secondary" href="../../Sign/Sign_Up/index.html">Sign up</a>
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
    <!-- //공통 헤더&네비-->
	
    <div class="row mpwrap">
    <div class="container p-3">

        <!-- Nav tabs -->
        <ul class="nav nav-tabs">
          <li class="nav-item">
            <a class="nav-link active" data-toggle="tab" href="#mInfo">회원정보</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" data-toggle="tab" href="#myPost">작성글</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" data-toggle="tab" href="#myComment">작성댓글</a>
          </li>
        </ul>
      
        <!-- Tab panes -->
        <div class="tab-content">
          <div id="mInfo" class="container tab-pane active"><br>

            <div class="container">
                <div class="row">
                    <div class="col-lg-9">

                      <div class="tab-content" id="nav-tabContent">

                        <div class="tab-pane fade show active" id="list-mInfo" role="tabpanel" aria-labelledby="list-mInfo-list"><br>
                            <table class="table table-bordered mInfotbl">
                                <tbody>
                                    <tr>
                                        <th>아이디<span class="text-danger">*</span></th>
                                        <td colspan="3">honggildong@gmail.com</td>
                                    </tr>
                                    <tr>
                                        <th>이름</th>
                                        <td>gildong</td>
                                        <th id="thlname">성</th>
                                        <td>hong</td>
                                    </tr>
                                    <tr>
                                        
                                    </tr>
                                    <tr>
                                        <th>생년월일</th>
                                        <td colspan="3">2020.07.29.</td>
                                    </tr>
                                    <tr>
                                        <th>휴대전화</th>
                                        <td colspan="3">010-1234-5678</td>
                                    </tr>
                                    <tr>
                                      <th>주소</th>
                                      <td colspan="3">대구광역시 블라블라 블라블라 블라블라 123</td>
                                  </tr>
                                </tbody>
                            </table>
                        </div>
                        <!-- //회원정보 보기 -->

                        <div class="tab-pane fade" id="list-modifyInfo" role="tabpanel" aria-labelledby="list-modifyInfo-list">
                            <h3>회원정보 수정</h3>
                            <hr>
                            <form>
                                <fieldset disabled>
                                    <div class="form-group">
                                    <label for="userid">아이디<span class="text-danger">*</span></label>
                                    <input type="text" class="form-control" id="userid" placeholder="honggildong@gmail.com">
                                    </div>
                                </fieldset>
                                <div class="form-group">
                                  <label for="mPhone">휴대전화</label>
                                  <input type="text" class="form-control" id="mPhone" value="010-1234-5678">
                                </div>
                                <div class="form-group">
                                    <label for="mAddress">주소</label>
                                    <input type="text" class="form-control" id="mAddress" value="대구시 블라블라 블라블라 블라블라 123">
                                  </div>
                                  <button type="submit" class="btn btn-primary float-right">수정</button>
                              </form>
                        </div>
                        <!-- //회원정보 수정 -->

                        <div class="tab-pane fade" id="list-modifyPwd" role="tabpanel" aria-labelledby="list-modifyPwd-list">
                            <h3>비밀번호 변경</h3>
                            <hr>
                            <form>
                                <fieldset disabled>
                                    <div class="form-group">
                                    <label for="userid">아이디<span class="text-danger">*</span></label>
                                    <input type="text" class="form-control" id="userid" placeholder="honggildong@gmail.com">
                                    </div>
                                </fieldset>
                                <div class="form-group">
                                  <input type="password" class="form-control" id="password" placeholder="현재 비밀번호">
                                </div>
                                <div class="form-group">
                                    <input type="password" class="form-control" id="newPwd" placeholder="새 비밀번호">
                                  </div>
                                  <div class="alert alert-warning" role="alert">
                                    비밀번호는 8자리 이상이여야 합니다.
                                  </div>
                                  <div class="form-group">
                                    <input type="password" class="form-control" id="mAddress" placeholder="새 비밀번호 확인">
                                  </div>
                                  <button type="submit" class="btn btn-primary float-right">변경</button>
                              </form>
                        </div>
                        <!-- //비밀번호 변경 -->

                        <div class="tab-pane fade" id="list-delInfo" role="tabpanel" aria-labelledby="list-delInfo-list">
                            <h3>회원 탈퇴</h3>
                            <hr>
                            <div class="alert alert-danger" role="alert">
                                탈퇴할 경우 복구가 불가 하오니 신중하게 결정해주시기 바랍니다.
                              </div>
                              <hr>
                            <form>
                                <fieldset disabled>
                                    <div class="form-group">
                                    <label for="userid">아이디<span class="text-danger">*</span></label>
                                    <input type="text" class="form-control" id="userid" placeholder="honggildong@gmail.com">
                                    </div>
                                </fieldset>
                                <div class="form-group">
                                  <input type="password" class="form-control" id="password" placeholder="비밀번호">
                                </div>
                                  <button type="submit" class="btn btn-primary float-right">탈퇴</button>
                              </form>
                        </div>
                        <!-- //회원 탈퇴 -->

                      </div>
                      <!-- //tab-Content(list-Content) -->
                    </div>
                    <!-- //col-lg-9 -->

                    <div class="col-lg-3">
                        <h3>My Page</h3>
                        <hr>
                        <div class="list-group" id="list-tab" role="tablist">
                          <a class="list-group-item list-group-item-action active" id="list-mInfo-list" data-toggle="list" href="#list-mInfo" role="tab" aria-controls="mInfo">회원정보 보기</a>


                          <a class="list-group-item list-group-item-action" id="list-modifyInfo-list" data-toggle="list" href="#list-modifyInfo" role="tab" aria-controls="modifyInfo">회원정보 수정</a>



                          <a class="list-group-item list-group-item-action" id="list-modifyPwd-list" data-toggle="list" href="#list-modifyPwd" role="tab" aria-controls="modifyPwd">비밀번호 변경</a>



                          <a class="list-group-item list-group-item-action" id="list-delInfo-list" data-toggle="list" href="#list-delInfo" role="tab" aria-controls="delInfo">탈퇴</a>
                        </div>
                        <!-- //list-group -->
                      </div>
                      <!-- //col-lg-3 -->

                  </div>
                  <!-- //mInfo_row -->
            </div>
            <!-- //mInfo_container -->
            
          </div>
          <!-- //mInfo -->

          <div id="myPost" class="container tab-pane fade"><br>
            <div class="container mt-3 mPost">
              <table class="table mPosttbl">
                    <thead>
                      <tr class="text-center d-flex">
                          <th class="col-1">번호</th>
                          <th class="col-8">제목</th>
                          <th class="col-2">작성일</th>
                          <th class="col-1">조회</th>
                      </tr>
                    </thead>
                    <tbody>
                      <tr class="d-flex">
                        <td class="col-1 text-center">2</td>
                        <td class="col-8"><a href="#">제목입니다. 제목입니다.</a></td>
                        <td class="col-2 text-center">2020.07.29.</td>
                        <td class="col-1 text-center">2</td>
                    </tr>
                      <tr class="d-flex">
                          <td class="col-1 text-center">1</td>
                          <td class="col-8"><a href="#">제목입니다.</a></td>
                          <td class="col-2 text-center">2020.07.29.</td>
                          <td class="col-1 text-center">1</td>
                      </tr>
                  </tbody>
              </table>
              <ul class="pagination justify-content-center">
                <li class="page-item"><a class="page-link" href="#">Previous</a></li>
                <li class="page-item"><a class="page-link" href="#">1</a></li>
                <li class="page-item"><a class="page-link" href="#">2</a></li>
                <li class="page-item"><a class="page-link" href="#">3</a></li>
                <li class="page-item"><a class="page-link" href="#">Next</a></li>
              </ul>
            </div>
            <!-- //.mPost -->
          </div>
          <!-- //#myPost -->

          <div id="myComment" class="container tab-pane fade"><br>
            <div class="container mt-3 mComment">
              <table class="table mCommenttbl">
                    <thead>
                      <tr class="text-center d-flex">
                          <th class="col-9">댓글</th>
                          <th class="col-3">작성일</th>
                      </tr>
                    </thead>
                    <tbody>
                      <tr class="d-flex">
                        <td class="col-9"><a href="#">작성한 댓글. 작성한 댓글.</a></td>
                        <td class="col-3 text-center">2020.07.29.</td>
                    </tr>
                      <tr class="d-flex">
                          <td class="col-9"><a href="#">작성한 댓글.</a></td>
                          <td class="col-3 text-center">2020.07.29.</td>
                      </tr>
                  </tbody>
              </table>
              <ul class="pagination justify-content-center">
                <li class="page-item"><a class="page-link" href="#">Previous</a></li>
                <li class="page-item"><a class="page-link" href="#">1</a></li>
                <li class="page-item"><a class="page-link" href="#">2</a></li>
                <li class="page-item"><a class="page-link" href="#">3</a></li>
                <li class="page-item"><a class="page-link" href="#">Next</a></li>
              </ul>
            </div>
            <!-- //.mComment -->
          </div>
          <!-- //#myComment -->

        </div>
        <!-- //tab-content -->
        
      </div>
      <!-- //container(mypage_wrap) -->
    </div>
    <!-- //row(mypage) -->

  </div>
  <!-- //container(body_wrap) -->

  <footer class="blog-footer">
    <p>Blog template built for <a href="https://getbootstrap.com/">Bootstrap</a> by <a href="https://twitter.com/mdo">@mdo</a>.</p>
    <p>
      <a href="#">Back to top</a>
    </p>
  </footer>
</body>
</html>
