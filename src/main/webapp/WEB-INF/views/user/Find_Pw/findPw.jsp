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
    <title>Find Password</title>

    <link rel="canonical" href="https://getbootstrap.com/docs/4.5/examples/floating-labels/">
    <!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script> -->

    <!-- Bootstrap core CSS -->
    <link href="${pageContext.request.contextPath}/resources/assets/dist/css/bootstrap.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="${pageContext.request.contextPath}/resources/user/css/findPw.css" rel="stylesheet">
  </head>

  <body>
    <form class="form-signin" action="findPw" method="POST">
      <div class="text-center mb-4">
        <img src="${pageContext.request.contextPath}/resources/user/Images/Find_Pwd.png" id="Find_Pwd">
      </div>

      <div class="form-group">
        <label for="inputEmail">Email address</label>
        <input type="email" class="form-control btn-dark" id="inputEmail" name="M_Id" placeholder="name@example.com" required autofocus>
      </div>
      
      <div class="form-group" id="form_inputTel">
        <label for="inputTel">Phone number</label>
        <input type="tel" class="form-control btn-dark" id="inputTel" name="M_Phone" pattern="[0-9]{3}-[0-9]{3,4}-[0-9]{4}" placeholder="000-0000-0000" maxlength="13" required>
      </div>
      
   	  <c:if test="${msg == false}">
		<p style="color: red;" class="text-center">Failed to find! Please check your ID and phone.</p>
	  </c:if>

      <div class="form-row">
      	<div class="col-md-6 mb-3">
		  <button class="btn btn-lg btn-outline-secondary btn-block" type="button" onclick="location.href='/user/Sign_In/login'">Sign in</button>
		</div>
		<div class="col-md-6 mb-3">
	      <button class="btn btn-lg btn-outline-secondary btn-block" type="submit">Confirm</button>
	    </div>
	  </div>
	  
      <p class="mt-5 mb-3 text-muted text-center">&copy; 2020-2021</p>
    </form>
  </body>
</html>
