<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>MyPage</title>

    <link rel="canonical" href="${pageContext.request.contextPath}/resources/assets/dist/css/bootstrap-4.5.0.min.css">
    <script src="${pageContext.request.contextPath}/resources/assets/dist/js/jquery-3.5.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/assets/dist/js/popper-1.16.0.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/assets/dist/js/bootstrap-4.5.0.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/assets/dist/js/jquery-1.11.3.min.js"></script>
    
    <!-- Bootstrap core CSS -->
    <link href="${pageContext.request.contextPath}/resources/assets/dist/css/bootstrap.css" rel="stylesheet">
    
    <!-- Custom styles for this template -->
    <link rel="canonical" href="${pageContext.request.contextPath}/resources/assets/dist/css/font-css.css">
    <link href="${pageContext.request.contextPath}/resources/assets/dist/css/mainCommon.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/myPage/css/blog.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/myPage/css/mypage.css" rel="stylesheet">
    
    <!-- js -->
    <script src="${pageContext.request.contextPath}/resources/assets/dist/js/jquery-3.4.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/myPage/js/myPage.js"></script>
</head>

<body>
  <div class="container">

    <jsp:include page="../inc/top.jsp"/>
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
                                        <td colspan="3">${user.m_Id}</td>
                                    </tr>
                                    <tr>
                                        <th>이름</th>
                                        <td>${user.m_Fname}</td>
                                        <th id="thlname">성</th>
                                        <td>${user.m_Lname}</td>
                                    </tr>
                                    <tr>
                                        
                                    </tr>
                                    <tr>
                                        <th>생년월일</th>
                                        <td colspan="3">${user.m_Year}.${user.m_Month}.${user.m_Day}.</td>
                                    </tr>
                                    <tr>
                                        <th>휴대전화</th>
                                        <td colspan="3">${user.m_Phone}</td>
                                    </tr>
                                    <tr>
                                      <th>가입일</th>
                                      <td colspan="3">${user.m_Date}</td>
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
                                    <label for="M_Id">아이디<span class="text-danger">*</span></label>
                                    <input type="text" class="form-control" id="M_Id" value="${user.m_Id}" readonly>
                                    </div>
                                </fieldset>
                                <div class="form-group">
                                  <label for="M_Phone">휴대전화</label>
                                  <input type="text" class="form-control" id="M_Phone" value="${user.m_Phone}">
                                </div>
                                <div class="form-group">
                                    <label for="M_Pw">비밀번호</label>
                                    <input type="password" class="form-control" id="M_Pw">
                                  </div>
                                  <button type="button" class="btn btn-primary float-right" onclick="updateValidation()">수정</button>
                              </form>
                        </div>
                        <!-- //회원정보 수정 -->

                        <div class="tab-pane fade" id="list-modifyPwd" role="tabpanel" aria-labelledby="list-modifyPwd-list">
                            <h3>비밀번호 변경</h3>
                            <hr>
                            <form>
                                <fieldset disabled>
                                    <div class="form-group">
                                    <label for="M_Id2">아이디<span class="text-danger">*</span></label>
                                    <input type="text" class="form-control" id="M_Id2" value="${user.m_Id}" readonly>
                                    </div>
                                </fieldset>
                                <div class="form-group">
                                  <input type="password" class="form-control" id="M_Pw2" placeholder="현재 비밀번호">
                                </div>
                                <div class="form-group">
                                    <input type="password" class="form-control" id="newPwd" placeholder="새 비밀번호">
                                  </div>
                                  <div class="alert alert-warning" role="alert">
                                    	비밀번호는 8자리 이상이여야 합니다.
                                  </div>
                                  <div class="form-group">
                                    <input type="password" class="form-control" id="newPwd2" placeholder="새 비밀번호 확인">
                                  </div>
                                  <button type="button" class="btn btn-primary float-right" onclick="modPwdValidation()">변경</button>
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
                                    <label for="M_Id3">아이디<span class="text-danger">*</span></label>
                                    <input type="text" class="form-control" id="M_Id3" value="${user.m_Id}" readonly>
                                    </div>
                                </fieldset>
                                <div class="form-group">
                                  <input type="password" class="form-control" id="M_Pw3" placeholder="비밀번호">
                                </div>
                                  <button type="button" class="btn btn-primary float-right" onclick="delUserValidation()">탈퇴</button>
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

  <jsp:include page="../inc/bottom.jsp"/>
  <!-- //공통 푸터 -->
</body>
</html>
