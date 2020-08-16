<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
    
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Jekyll v4.0.1">
    <title>Sign Up</title>

    <link rel="canonical" href="https://getbootstrap.com/docs/4.5/examples/floating-labels/">
    <!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script> -->

    <!-- Bootstrap core CSS -->
    <link href="${pageContext.request.contextPath}/resources/assets/dist/css/bootstrap.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="${pageContext.request.contextPath}/resources/User/css/register.css" rel="stylesheet">
  </head>

  <body>
    <form class="form-signin" method="POST" action="user/Sign_Up/register">
      <div class="text-center mb-4">
        <h1 class="h3 mb-3 font-weight-normal">Sign Up</h1>
      </div>

      <div class="form-group">
        <label for="inputEmail">Email address</label>
        <input type="email" class="form-control btn btn-dark" id="inputEmail" name="M_Id" placeholder="name@example.com" required autofocus>
      </div>

      <div class="form-group">
        <label for="inputPassword">Password</label>
        <input type="password" class="form-control btn btn-dark" id="inputPassword" name="M_Pw" required>
      </div>

      <div class="form-group">
        <label for="inputRepassword">Re-enter password</label>
        <input type="password" class="form-control btn btn-dark" id="inputRepassword" name="M_Pw2" required>
      </div>

      <div class="form-row">
        <div class="col-md-6 mb-3">
          <label for="inputFirstName">First name</label>
          <input type="text" class="form-control btn btn-dark" id="inputFirstName" name="M_Fname" required>
        </div>
        <div class="col-md-6 mb-3">
          <label for="inputLastName">Last name</label>
          <input type="text" class="form-control btn btn-dark" id="inputLastName" name="M_Lname" required>
        </div>
      </div>
      
      <div class="form-group">
        <label for="inputTel">Phone number</label>
        <input type="tel" class="form-control btn btn-dark" id="inputTel" name="M_Phone" pattern="[0-9]{3}-[0-9]{4}-[0-9]{4}" placeholder="000-0000-0000" required>
      </div>
      
      <label for="inputBirth">Birth</label>
      <div class="form-row" id="form_YMD">
        <div class="col">
          <input type="number" class="form-control btn btn-dark" id="inputYear" name="M_Year" placeholder="Year (4)" min="1900" max="2021"required>
        </div>
        <div class="col">
          <select class="form-control btn btn-dark" id="inputMonth" name="M_Month" required>
            <option value="">Month</option>
            <option value="1">1</option> <option value="2">2</option> 
            <option value="2">3</option> <option value="4">4</option>
            <option value="5">5</option> <option value="6">6</option>
            <option value="7">7</option> <option value="8">8</option> 
            <option value="9">9</option> <option value="10">10</option>
            <option value="11">11</option> <option value="12">12</option>
          </select>
        </div>
        <div class="col">
          <input type="number" class="form-control btn btn-dark" id="inputDay" name="M_Day" placeholder="Day" min="1" max="30" required>
        </div>
      </div>
 
      <button class="btn btn-lg btn-outline-secondary btn-block" type="submit">Sign Up</button>
      
      <p class="mt-5 mb-3 text-muted text-center">&copy; 2020-2021</p>
    </form>
  </body>
</html>
