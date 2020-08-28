<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Jekyll v4.0.1">
    <title>Find ID</title>

    <link rel="canonical" href="https://getbootstrap.com/docs/4.5/examples/floating-labels/">
    
    <!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script> -->

    <!-- Bootstrap core CSS -->
    <link href="${pageContext.request.contextPath}/resources/assets/dist/css/bootstrap.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="${pageContext.request.contextPath}/resources/user/css/findId.css" rel="stylesheet">
  </head>

  <body>
    <form class="form-signin" action="findId" method="POST">
      <div class="text-center mb-4">
        <img src="${pageContext.request.contextPath}/resources/user/Images/Find_Id.png" id="Find_Id">
      </div>

      <div class="form-row">
        <div class="col-md-6 mb-3">
          <label for="inputFirstName">First name</label>
          <input type="text" class="form-control btn btn-dark" id="inputFirstName" name="M_Fname"  maxlength="10" required>
        </div>
        <div class="col-md-6 mb-3">
          <label for="inputLastName">Last name</label>
          <input type="text" class="form-control btn btn-dark" id="inputLastName" name="M_Lname"  maxlength="10" required>
        </div>
      </div>
      
      <div class="form-group" id="form_inputTel">
        <label for="inputTel">Phone number</label>
        <input type="tel" class="form-control btn btn-dark" id="inputTel" name="M_Phone" pattern="[0-9]{3}-[0-9]{3,4}-[0-9]{4}" placeholder="000-0000-0000" maxlength="13" required>
      </div>
      
   	  <c:if test="${msg == true}">
  	  	 <c:if test="${fn:length(user.m_Id) <= value}">
			<p class="text-center" style="font-size: 22px;">
				Email = 
				${fn:substring(user.m_Id,0,2)}
				<c:forEach begin="1" end="${fn:length(user.m_Id)-2}">*</c:forEach>
			</p>
		 </c:if>
   	  
   	  	 <c:if test="${value < fn:length(user.m_Id)}">
			<p class="text-center" style="font-size: 22px;">
				Email = 
				${fn:substring(user.m_Id,0,4)}
				<c:forEach begin="1" end="${fn:length(user.m_Id)-4}">*</c:forEach>
			</p>
		 </c:if>
	  </c:if>  
	  
  	  <c:if test="${msg == false}">
		<p style="color: red;" class="text-center">Failed to find! Please check your Name and phone.</p>
	  </c:if>
	    
      <div class="form-row">
      	<div class="col-md-6 mb-3">
      	  <c:if test="${user == null}">
		  	<button class="btn btn-lg btn-outline-secondary btn-block" type="button" onclick="location.href='/main/main'">Home</button>
		  </c:if>
		  <c:if test="${user != null}">
		    <button class="btn btn-lg btn-outline-secondary btn-block" type="button" onclick="location.href='/user/Sign_In/login'">Sign in</button>
		  </c:if>
		</div>
		<div class="col-md-6 mb-3">
	      <button class="btn btn-lg btn-outline-secondary btn-block" type="submit">Confirm</button>
	    </div>
	  </div>
	  
      <p class="mt-5 mb-3 text-muted text-center">&copy; 2020-2021</p>
    </form>
  </body>
</html>
