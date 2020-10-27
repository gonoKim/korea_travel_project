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
					<h2 class="my-3">祭り情報</h2>
				</div>

				<h4 class="my-3">テーマ</h4>
				<input type="text" class="form-control text-dark" id="subject" name="F_Subject" placeholder="제목을 입력해 주세요">

				<h4 class="my-3">要約</h4>
				<textarea rows="5" cols="20" class="form-control text-dark" id="content" name="F_Summary" placeholder="내용 요약본을 입력해 주세요"></textarea>

				<h4 class="my-3">内容</h4>
				<textarea rows="10" cols="20" class="form-control text-dark" id="content" name="F_Content" placeholder="내용를 입력해 주세요"></textarea>

							
							<!-- 장소 코드 
							서울특별시(001)부산광역시(002)대구광역시(003)인천광역시(004)대전광역시(005)광주광역시(006)울산광역시(007)
							경기도(011)강원도(012)충청남도(013)충청북도(014)전라남도(015)전라북도(016)경상남도(017)경상북도(018)
							세종특별자치시(101)\n제주특별자치도(102) -->
				<div class="my-3">						
						<div class="col">
						<select class="form-control" id="" name="Place_Code" required>
							<option value="">地域コード</option>
							<option value="">広域市</option>
							<option value="001">ソウル(001)</option> 	<option value="002">プサン(002)</option>
							<option value="003">テグ(003)</option> 	<option value="004">インチョン(004)</option>
							<option value="005">テジョン(005)</option> 	<option value="006">クァンジュ(006)</option>
							<option value="007">ウルサン(007)</option> 
							<option value="">道</option>
							<option value="011">キョンギどう(011)</option>	<option value="012">カンウォン・ド(012)</option>
							<option value="013">チュンチョンナムド(013)</option>	<option value="014">チュンチョンブクド(014)</option>	
							<option value="015">チョルラナムド(015)</option>	<option value="016">チョルラブクド(016)</option>	
							<option value="017">キョンサンナムド(017)</option>	<option value="018">キョンサンブクド(018)</option> 
							<option value="">特別自治道</option>
							<option value="101">世宗特別自治市(101)</option>	
							<option value="102">チェジュ(102) </option>
							<option value="">オンライン</option>
							<option value="999">オンライン(999) </option> 
						</select>
					</div>
				</div>

				<h4 class="my-3">住所</h4>
				<input type="text" class="form-control text-dark" id="address" name="F_Address" placeholder="주소를 입력해 주세요">
				
				<h4 class="my-3">開始日</h4>
				<div class="form-row" id="form_YMD">
					<div class="col">
						<input type="number" class="form-control" id="inputYear" name="F_S_Year" placeholder="年 (4)" required>
					</div>
					<div class="col">
						<select class="form-control" id="inputMonth" name="F_S_Month" required>
							<option value="">月</option>
							<option value="1">1</option> <option value="2">2</option>
							<option value="2">3</option> <option value="4">4</option>
							<option value="5">5</option> <option value="6">6</option>
							<option value="7">7</option> <option value="8">8</option>
							<option value="9">9</option> <option value="10">10</option>
							<option value="11">11</option> <option value="12">12</option>
						</select>
					</div>
					<div class="col">
						<input type="number" class="form-control" id="inputDay" name="F_S_Day" placeholder="日" required>
					</div>
				</div>
				
				<h4 class="my-3">終わる日</h4>
				<div class="form-row" id="form_YMD2">
					<div class="col">
						<input type="number" class="form-control" id="inputYear" name="F_L_Year" placeholder="年 (4)" required>
					</div>
					<div class="col">
						<select class="form-control" id="inputMonth" name="F_L_Month" required>
							<option value="">月</option>
							<option value="1">1</option> <option value="2">2</option>
							<option value="2">3</option> <option value="4">4</option>
							<option value="5">5</option> <option value="6">6</option>
							<option value="7">7</option> <option value="8">8</option>
							<option value="9">9</option> <option value="10">10</option>
							<option value="11">11</option> <option value="12">12</option>
						</select>
					</div>
					<div class="col">
						<input type="number" class="form-control" id="inputDay" name="F_L_Day" placeholder="日" required>
					</div>
				</div>
				
				<!-- 파일 업로드 -->
				<h4 class="my-3">イメージ·アップロード</h4>
				<input type="file" name="file" accept="image/*" onchange="setThumbnail(event);"/>
				<!-- 이미지 미리 보기 -->
					<div id="image_container"></div>



				<div class="row justify-content-center my-4">
					<button type="reset" id="join-submit" class="btn">リセット</button>
					<button type="submit" class="btn" id="submit" onClick="opener.parent.location.reload();">書く</button>
					<input type="button" value="キャンセル" class="btn" onclick="window.close();" />
				</div>
			</form>
		</div>
	</article>
</body>
</html>