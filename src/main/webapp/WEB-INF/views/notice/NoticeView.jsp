<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/jstlHeader.jsp"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>NoticeView</title>
<link rel="stylesheet"
	href="../../../resources/assets/dist/css/bootstrap-4.5.0.min.css">
<link rel="stylesheet"
	href="../../../resources/assets/dist/css/area.css">
<link rel="stylesheet"
	href="../../../resources/assets/dist/css/blog.css">
<script src="../../../resources/assets/dist/js/jquery-3.5.1.min.js"></script>
<script src="../../../resources/assets/dist/js/popper-1.16.0.min.js"></script>
<script src="../../../resources/assets/dist/js/bootstrap-4.5.0.min.js"></script>
<script src="../../../resources/assets/dist/js/jquery-1.11.3.min.js"></script>

<!--QnA 커스텀 css, js  -->
<link rel="stylesheet" href="../../../resources/QnA/css/broad_view.css">

<script type="text/javascript">
	function NoticeDelete() {
		var chk = confirm("정말 삭제하시겠습니까?");
		if (chk) {
			location.href = "/notice/NoticeDelete?NB_Num=${result.NB_Num }";
		}
	}

	function NoticeUpdate() {
		location.href = "/notice/NoticeUpdate?NB_Num=${result.NB_Num }";
	}
</script>
</head>
<body>
	<div class="container">
		<jsp:include page="../inc/top.jsp" />
		<!-- //공통 헤더&네비 -->
		
		<form>
			<table class="my-5 table table-bordered">
				<tr>
					<th class="text-center w-25 p-3">Subject:</th>
					<td scope="row">${result.NB_Subject }</td>
				</tr>
				<tr>
					<th class="text-center">Content:</th>
					<td scope="row">${result.NB_Content }</td>
				</tr>
				<tr>
					<th class="text-center">Views:</th>
					<td scope="row">${result.NB_Views }</td>
				</tr>
			</table>
			
			<div class="row justify-content-center my-4">
				<input type="button" value="Update" class="btn" onclick="NoticeUpdate()" />
				<input type="button" value="Delete" class="btn" onclick="NoticeDelete()" />
				<input type="button" value="Cancel" class="btn" onclick="javascript:location.href='NoticeBoard'" />
			</div>
		</form>
	</div>
	
 	<jsp:include page="../inc/bottom.jsp" />
	<!-- //공통 푸터 -->
</body>
</html>