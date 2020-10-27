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
    <title>Change Password</title>

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
    <script src="${pageContext.request.contextPath}/resources/user/js/changePwd.js"></script>

    <!-- Custom styles for this template -->
    <link href="${pageContext.request.contextPath}/resources/user/css/changePwd.css" rel="stylesheet">
  </head>

  <body>
    <form class="form-signin" action="changePwd" method="POST">
      <div class="text-center mb-4">
        <img src="${pageContext.request.contextPath}/resources/user/Images/Change_Pwd.png" id="Change_Pwd">
      </div>

      <div class="form-group">
        <label for="inputPassword">Password</label>
        <input type="password" class="form-control btn-dark" id="inputPassword" name="M_Pw" maxlength="20" onFocus="this.value=''; return true;" required>
      </div>

      <div class="form-group">
        <label for="inputRepassword">Retype password</label>
        <input type="password" class="form-control btn-dark" id="inputRepassword" name="M_Pw2" maxlength="20" required>
      </div>

      <div class="form-row">
      	<div class="col-md-6 mb-3">
		  <button class="btn btn-lg btn-outline-secondary btn-block" type="button" onclick="location.href='/main/main'">Home</button>
		</div>
		<div class="col-md-6 mb-3">
	      <button class="btn btn-lg btn-outline-secondary btn-block" type="submit" id="submit">Confirm</button>
	    </div>
	  </div>
	  
      <p class="mt-5 mb-3 text-muted text-center">&copy; 2020-2021</p>
    </form>
  </body>
</html>
