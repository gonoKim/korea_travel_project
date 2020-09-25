<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/jstlHeader.jsp"%>

<!DOCTYPE html>
<html>
	<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>FestivalWrite</title>
    
	<link rel="canonical" href="${pageContext.request.contextPath}/resources/assets/dist/css/bootstrap-4.5.0.min.css">
    <script src="${pageContext.request.contextPath}/resources/assets/dist/js/jquery-3.5.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/assets/dist/js/popper-1.16.0.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/assets/dist/js/bootstrap-4.5.0.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/assets/dist/js/jquery-1.11.3.min.js"></script>
    
    <!-- Bootstrap core CSS -->
    <link href="${pageContext.request.contextPath}/resources/assets/dist/css/bootstrap.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/QnA/css/broad.css" rel="stylesheet">
	
	<!-- Custom styles for this template -->
	<link href="${pageContext.request.contextPath}/resources/assets/dist/css/mainCommon.css" rel="stylesheet">
	
		<!-- js -->
	<script src="${pageContext.request.contextPath}/resources/assets/dist/js/jquery-3.4.1.min.js"></script>
	
	<script type="text/javascript">
	function btnOk_Click(){
	    parent.location.reload();
	}
	</script>
</head>

<body class="container-md vh-100 ">
	<article class="container row justify-content-center align-items-center">
		<div class="col-sm-10 col-md-offset-3 ">
			<form method="post" action="FestivalWrite"
				enctype="multipart/form-data">
				<div class=" text-center text-dark pt-5 ">
					<h2 class="my-3">Festival Information</h2>
				</div>

				<h4 class="my-3">Subject</h4>
				<input type="text" class="form-control text-dark" id="subject" name="F_Subject" placeholder="제목을 입력해 주세요">

				<h4 class="my-3">Content</h4>
				<textarea rows="10" cols="20" class="form-control text-dark" id="content" name="F_Content" placeholder="내용를 입력해 주세요"></textarea>

				<h4 class="my-3">Place</h4>
				<input type="text" class="form-control text-dark" id="place" name="F_Place" placeholder="지역를 입력해 주세요">

				<h4 class="my-3">Address</h4>
				<input type="text" class="form-control text-dark" id="address" name="F_Address" placeholder="주소를 입력해 주세요">
				
				<h4 class="my-3">Start</h4>
				<div class="form-row" id="form_YMD">
					<div class="col">
						<input type="number" class="form-control" id="inputYear" name="F_S_Year" placeholder="Year (4)" min="1900" max="2021"
							maxlength="4" oninput="maxLengthCheck(this)" required>
					</div>
					<div class="col">
						<select class="form-control" id="inputMonth" name="F_S_Month" required>
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
						<input type="number" class="form-control" id="inputDay" name="F_S_Day" placeholder="Day" min="1" max="31" maxlength="2"
							oninput="maxLengthCheck(this)" required>
					</div>
				</div>
				
				<h4 class="my-3">End</h4>
				<div class="form-row" id="form_YMD2">
					<div class="col">
						<input type="number" class="form-control" id="inputYear" name="F_L_Year" placeholder="Year (4)" min="1900" max="2021"
							maxlength="4" oninput="maxLengthCheck(this)" required>
					</div>
					<div class="col">
						<select class="form-control" id="inputMonth" name="F_L_Month" required>
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
						<input type="number" class="form-control" id="inputDay" name="F_L_Day" placeholder="Day" min="1" max="31" maxlength="2"
							oninput="maxLengthCheck(this)" required>
					</div>
				</div>

				<h4 class="my-3">File Upload</h4>
				<input type="file" name="file">

				<div class="row justify-content-center my-4">
					<button type="reset" id="join-submit" class="btn">Reset</button>
					<button type="submit" class="btn" id="submit" onClick="opener.parent.location.reload();">write</button>
					<input type="button" value="Cancel" class="btn" onclick="window.close();" />
				</div>
			</form>
		</div>
	</article>
</body>
</html>