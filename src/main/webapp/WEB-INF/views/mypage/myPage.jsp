<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/jstlHeader.jsp"%>

<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
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
    <link href="${pageContext.request.contextPath}/resources/assets/dist/css/no-responsive.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/myPage/css/mypage.css" rel="stylesheet">
    
    <!-- js -->
    <script src="${pageContext.request.contextPath}/resources/assets/dist/js/jquery-3.4.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/myPage/js/myPage.js"></script>
</head>

<script type="text/javascript">
	<c:if test="${msg == true}">
		alert("Modification Completed");
	</c:if>
	
	<c:if test="${msg == false}">
		alert("Wrong password");
	</c:if> 
</script>
 
<body>
  <div class="container">

    <jsp:include page="../inc/top.jsp"/>
	
    <div class="row mpwrap">
    <div class="container p-3">

        <!-- Nav tabs -->
        <ul class="nav nav-tabs">
          <li class="nav-item">
            <a class="nav-link active" data-toggle="tab" href="#mInfo">Info</a>
          </li>
        </ul>
      
        <!-- Tab panes -->
        <div class="tab-content">
          <div id="mInfo" class="container tab-pane active"><br>

            <div class="container">
                <div class="row">
                    <div class="col-lg-9">
                      <div class="tab-content" id="nav-tabContent">
                        <div class="tab-pane fade show active" id="list-mInfo" role="tabpanel" aria-labelledby="list-mInfo-list">
                            <h3>회원정보 보기</h3> <hr>
                            <table class="table table-bordered mInfotbl" id="infoTable">
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
                                        <th>생년월일</th>
                                        <td colspan="3">${user.m_Year}. ${user.m_Month}. ${user.m_Day}</td>
                                    </tr>
                                    <tr>
                                        <th>휴대전화</th>
                                        <td colspan="3">${user.m_Phone}</td>
                                    </tr>
                                    <tr>
	                                    <th>가입일</th>
	                                    <td colspan="3">
	                                    	<fmt:formatDate pattern="yyyy-MM-dd" value="${user.m_Date}" />
	                                    </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                        <!-- //회원정보 보기 -->

                        <div class="tab-pane fade" id="list-modifyInfo" role="tabpanel" aria-labelledby="list-modifyInfo-list">
                            <h3>회원정보 수정</h3> <hr>
                            <form action="userUpdate" method="POST">
                                <div class="form-group">
                                	<label>Email address<span class="text-danger">*</span></label>
                                	<input type="text" class="form-control" id="inputEmail" name="M_Id" value="${user.m_Id}" readonly>
                                </div>
                                
                                <div class="form-row">
							        <div class="col-md-6 mb-3">
							          <label for="inputFirstName">First name</label>
							          <input type="text" class="form-control" id="inputFirstName" name="M_Fname" maxlength="10"
							          	value="${user.m_Fname}" onFocus="this.value='${user.m_Fname}'; return true;" required>
							        </div>
							        <div class="col-md-6 mb-3">
							          <label for="inputLastName">Last name</label>
							          <input type="text" class="form-control" id="inputLastName" name="M_Lname" maxlength="10"
							          	value="${user.m_Lname}" onFocus="this.value='${user.m_Lname}'; return true;" required>
							        </div>
						        </div>
      
                                <div class="form-group">
                                  <label for="inputTel">Phone number</label>
                                  	<div class="form-group">
	                                  	<input type="tel" class="form-control" id="inputTel" name="M_Phone" pattern="[0-9]{3}-[0-9]{3,4}-[0-9]{4}"
		        	 						maxlength="13" value="${user.m_Phone}" onFocus="this.value='${user.m_Phone}'; return true;" required>
		        	 					<button class="btn btn-lg btn-outline-secondary btn-block" type="button" id="phoneChk" onClick="phonChk()" value="N">Check</button>
		        	 				</div>
                                </div>
                                
	                  			<label for="inputBirth">Birth</label>
								<div class="form-row" id="form_YMD">
								  <div class="col">
								    <input type="number" class="form-control" id="inputYear" name="M_Year" placeholder="Year (4)"
								    	min="1900" max="2021" maxlength="4" oninput="maxLengthCheck(this)"
								    	value="${user.m_Year}" required>
								  </div>
								  <div class="col">
								    <input type="number" class="form-control" id="inputMonth" name="M_Month" placeholder="Month"
								     	min="1" max="12" maxlength="2" oninput="maxLengthCheck(this)"
								     	value="${user.m_Month}" required>
								  </div>
								  <div class="col">
								    <input type="number" class="form-control" id="inputDay" name="M_Day" placeholder="Day"
								     	min="1" max="31" maxlength="2" oninput="maxLengthCheck(this)"
								     	value="${user.m_Day}" required>
								  </div>
                                </div>
                                
                                <div class="form-group">
                                    <label for="inputPassword">Password</label>
                                    <input type="password" class="form-control" id="inputPassword" name="M_Pw" maxlength="20">
                                </div>
                                <button class="btn btn-primary float-right" type="submit" id="submit">modify</button>
                            </form>
                        </div>
                        <!-- //회원정보 수정 -->

                        <div class="tab-pane fade" id="list-modifyPwd" role="tabpanel" aria-labelledby="list-modifyPwd-list">
                            <h3>비밀번호 변경</h3> <hr>
                            <form>
                                <fieldset disabled>
                                    <div class="form-group">
	                                    <label>Email address<span class="text-danger">*</span></label>
	                                    <input type="text" class="form-control" id="inputEmail2" name="M_Id" value="${user.m_Id}" readonly>
                                    </div>
                                </fieldset>
                                <div class="form-group">
                                	<input type="password" class="form-control" id="inputPassword2" name="M_Pw" placeholder="Current Password"  maxlength="20">
                                </div>
                                <div class="form-group">
                                    <input type="password" class="form-control" id="newPwd" placeholder="New Password" maxlength="20" onFocus="this.value=''; return true;" required>
                                </div>
                                <div class="alert alert-warning" role="alert">
                                   	You must have at least one number and a special character within the first 8 characters of your password.
                                </div>
                                <div class="form-group">
                                	<input type="password" class="form-control" id="newRePwd" placeholder="Confirm new password" maxlength="20">
                                </div>
                                <button type="button" class="btn btn-primary float-right" onclick="modPwdValidation()">Change</button>
                            </form>
                        </div>
                        <!-- //비밀번호 변경 -->

                        <div class="tab-pane fade" id="list-delInfo" role="tabpanel" aria-labelledby="list-delInfo-list">
                            <h3>회원 탈퇴</h3> <hr>
                            <div class="alert alert-danger" role="alert">
                             	If you leave the membership, you will not be able to restore it, so please make a careful decision.
                            </div>
                            <hr>
                            <form>
                                <fieldset disabled>
                                    <div class="form-group">
	                                    <label>Email address<span class="text-danger">*</span></label>
	                                    <input type="text" class="form-control" id="inputEmail3" value="${user.m_Id}" readonly>
                                    </div>
                                </fieldset>
                                <div class="form-group">
                                	<input type="password" class="form-control" id="inputPassword3" placeholder="Password" maxlength="20">
                                </div>
                                <button type="button" class="btn btn-primary float-right" onclick="delUserValidation()">Delete</button>
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
        </div>
        <!-- //tab-content -->
        
      </div>
      <!-- //container(mypage_wrap) -->
    </div>
    <!-- //row(mypage) -->

  </div>
  <!-- //container(body_wrap) -->

  <jsp:include page="../inc/bottom.jsp"/>
  
</body>
</html>
