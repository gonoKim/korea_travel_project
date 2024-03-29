<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/jstlHeader.jsp"%>

<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Jekyll v4.0.1">
    <title>Sign In</title>

    <link rel="canonical" href="https://getbootstrap.com/docs/4.5/examples/floating-labels/">
    <!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script> -->

    <!-- Bootstrap core CSS -->
    <link href="${pageContext.request.contextPath}/resources/assets/dist/css/bootstrap.css" rel="stylesheet">
    
    <!-- js -->
    <script src="${pageContext.request.contextPath}/resources/assets/dist/js/jquery-3.5.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/user/js/ID_Save.js"></script>
    
    <!-- Custom styles for this template -->
    <link href="${pageContext.request.contextPath}/resources/user/css/login.css" rel="stylesheet">
  </head>
      
  <body>
    <form class="form-signin" method="POST" action="login">
      <div class="text-center mb-4">
        <a href="/main/main"><img src="${pageContext.request.contextPath}/resources/user/Images/logo.png" id="logo"></a>
      </div>

      <div class="form-label-group">
        <input type="email" id="inputEmail" name="M_Id" class="form-control btn-dark" placeholder="Email address" maxlength="30" required autofocus>
        <label for="inputEmail">イーメール</label>
      </div>

      <div class="form-label-group">
        <input type="password" id="inputPassword" name="M_Pw" class="form-control btn-dark" placeholder="Password" maxlength="20" required>
        <label for="inputPassword">パスワード</label>
      </div>

      <div class="checkbox mb-3">
        <input type="checkbox" id="remember" value="remember-me"> 
        <label id="remember_label" for="remember"></label> <label for="remember">イーメールの保存</label>
      </div>

      <button class="btn btn-lg btn-outline-secondary btn-block" type="submit">ログイン</button>
      <div class="btn-group btn-group-lg" role="group" aria-label="..."></div>   
      
	  <c:if test="${msg == false}">
		<p style="color: red;" class="text-center">ログインに失敗しました。 IDとパスワードをご確認ください。</p>
	  </c:if>  
       
      <div class="modal-footer">	
        <button type="button" class="btn btn btn-outline-secondary" onclick="location.href='/user/Find_Id/findId'" id="FI_btn">イーメールを探す</button>
        <button type="button" class="btn btn btn-outline-secondary" onclick="location.href='/user/Find_Pw/findPw'" id="FP_btn">パスワードを探す</button>
      </div>
      <button type="button" class="btn btn btn-outline-secondary" onclick="location.href='/user/Sign_Up/register'" id="sign_up_btn">会員加入</button>
      
      <p class="mt-5 mb-3 text-muted text-center">&copy; 2020-2021</p>
    </form>
  </body>
</html>
