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
    <title>Find ID</title>

    <link rel="canonical" href="https://getbootstrap.com/docs/4.5/examples/floating-labels/">
    
    <!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script> -->

    <!-- Bootstrap core CSS -->
    <link href="../../assets/dist/css/bootstrap.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="floating-labels.css" rel="stylesheet">
  </head>

  <body>
    <form class="form-signin">
      <div class="text-center mb-4">
        <h1 class="h3 mb-3 font-weight-normal">Find ID</h1>
      </div>

      <div class="form-row">
        <div class="col-md-6 mb-3">
          <label for="inputFirstName">First name</label>
          <input type="text" class="form-control btn btn-dark" id="inputFirstName" required>
        </div>
        <div class="col-md-6 mb-3">
          <label for="inputLastName">Last name</label>
          <input type="text" class="form-control btn btn-dark" id="inputLastName" required>
        </div>
      </div>
      
      <div class="form-group" id="form_inputTel">
        <label for="inputTel">Phone number</label>
        <input type="tel" class="form-control btn btn-dark" id="inputTel" pattern="[0-9]{3}-[0-9]{4}-[0-9]{4}" placeholder="000-0000-0000"required>
      </div>

      <button class="btn btn-lg btn-outline-secondary btn-block" type="submit">Confirm</button>
      <p class="mt-5 mb-3 text-muted text-center">&copy; 2020-2021</p>
    </form>
  </body>
</html>
