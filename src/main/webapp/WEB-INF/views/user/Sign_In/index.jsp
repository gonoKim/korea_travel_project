<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
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
    <link href="resources/css/bootstrap.css" rel="stylesheet">
    
    <!-- js -->
    <script src="resources/js/jquery.js"></script>
    <script src="resources/js/ID_Save.js"></script>
    
    <!-- Custom styles for this template -->
    <link href="resources/css/floating-labels.css" rel="stylesheet">
  </head>

  <body>
    <form class="form-signin">
      <div class="text-center mb-4">
        <h1 class="h3 mb-3 font-weight-normal">Sign In</h1>
      </div>

      <div class="form-label-group">
        <input type="email" id="inputEmail" class="form-control btn btn-dark" placeholder="Email address" required autofocus>
        <label for="inputEmail">Email address</label>
      </div>

      <div class="form-label-group">
        <input type="password" id="inputPassword" class="form-control btn btn-dark" placeholder="Password" required>
        <label for="inputPassword">Password</label>
      </div>

      <div class="checkbox mb-3">
        <input type="checkbox" id="remember" value="remember-me"> 
        <label for="remember"></label> Remember Email
      </div>

      <button class="btn btn-lg btn-outline-secondary btn-block" type="submit">Sign in</button>
      <div class="btn-group btn-group-lg" role="group" aria-label="..."></div>     
       
      <div class="modal-footer">
        <button type="button" class="btn btn btn-outline-secondary" onclick="location.href='user/Find_Id/index'" id="FI_btn">Find ID</button>
        <button type="button" class="btn btn btn-outline-secondary" onclick="location.href='user/Find_Pw/index'" id="FP_btn">Find Password</button>
      </div>
      <button type="button" class="btn btn btn-outline-secondary" onclick="location.href='user/Sign_Up/index'" id="sign_up_btn">Sign Up</button>

      <p class="mt-5 mb-3 text-muted text-center">&copy; 2020-2021</p>
    </form>
  </body>
</html>