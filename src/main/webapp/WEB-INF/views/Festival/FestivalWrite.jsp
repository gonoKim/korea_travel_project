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
		/* 스크립트 다 옮기기 */
	
		/* 파일 미리보기  */
		function setThumbnail(event) {
			var reader = new FileReader();
			reader.onload = function(event) {
				var img = document.createElement("img");
				img.setAttribute("src", event.target.result);
				document.querySelector("div#image_container").appendChild(img);
			};
			reader.readAsDataURL(event.target.files[0]);
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

							
							<!-- 장소 코드 
							서울특별시(001)부산광역시(002)대구광역시(003)인천광역시(004)대전광역시(005)광주광역시(006)울산광역시(007)
							경기도(011)강원도(012)충청남도(013)전라남도(014)전라북도(015)경상남도(016)경상북도(017)
							세종특별자치시(101)\n제주특별자치도(102) -->
				<div class="my-3">						
						<div class="col">
						<select class="form-control" id="" name="Place_Code" required>
							<option value="">Place_Code</option>
							<option value="">특별시 밑 광역시</option>
							<option value="001">서울특별시(001)</option> 	<option value="002">부산광역시(002)</option>
							<option value="003">대구광역시(003)</option> 	<option value="004">인천광역시(004)</option>
							<option value="005">대전광역시(005)</option> 	<option value="006">광주광역시(006)</option>
							<option value="007">울산광역시(007)</option> 
							<option value="">도</option>
							<option value="011">경기도(011)</option>	<option value="012">강원도(012)</option> 
							<option value="013">충청남도(013)</option>	<option value="014">전라남도(014)</option>
							<option value="015">전라북도(015)</option>	<option value="016">경상남도(016)</option>
							<option value="017">경상북도(017)</option> 
							<option value="">특별 자치도</option>
							<option value="101">세종특별자치시(101)</option>	
							<option value="102">제주특별자치도(102) </option> 
						</select>
					</div>
				</div>
				<!-- <h4 class="my-3">Place</h4>
				<input type="text" class="form-control text-dark" id="place" name="F_Place" placeholder="지역를 입력해 주세요">
 -->
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
				
				<!-- 파일 업로드 -->
				<h4 class="my-3">File Upload</h4>
				<input type="file" name="file" accept="image/*" onchange="setThumbnail(event);"/>
				<!-- 이미지 미리 보기 -->
					<div id="image_container"></div>



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