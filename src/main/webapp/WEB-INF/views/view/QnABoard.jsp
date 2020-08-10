<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/jstlHeader.jsp" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>QnABoard</title>
    <link rel="stylesheet" href="../../../resources/assets/dist/css/bootstrap-4.5.0.min.css">
    <script src="../../../../resources/assets/dist/js/jquery-3.5.1.min.js"></script>
    <script src="../../../resources/assets/dist/js/popper-1.16.0.min.js"></script>
    <script src="../../../resources/assets/dist/js/bootstrap-4.5.0.min.js"></script>
    <script src="../../../resources/assets/dist/js/jquery-1.11.3.min.js"></script>
<!-- <style>
  table {
    width: 100%;
    border: 1px solid #444444;
  }
  th, td {
    border: 1px solid #444444;
  }
</style> -->
</head>
<body>
<p>QnABoard</p>
<div>게시글 리스트</div>
    <table class="table">
        <caption>List of users</caption>
        <thead>
          <tr>
            <td scope="col">No</td>
            <td scope="col">Write</td>
            <td scope="col">Subject</td>
            <td scope="col">Views</td>
            <td scope="col">Date</td>
          </tr>
        

<c:forEach var="b" items="${result }">
<fmt:formatDate value="${b.qnA_Date}" pattern="yyyy-MM-dd HH:MM:ss" var="dateFormat_cr"/>
<tr>
<td>${b.qnA_Num }</td>
<td>${b.qnA_Write }</td>
<td>${b.qnA_Subject }</td>
<td>${b.qnA_Views }</td>
<td>${dateFormat_cr }</td>	
</tr>
</c:forEach>
</table>
<div> <a href="/view/QnAwrite">글 작성하기</a></div>
</body>
</html>