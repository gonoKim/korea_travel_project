<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/jstlHeader.jsp" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>QnABoard</title>
<style>
  table {
    width: 100%;
    border: 1px solid #444444;
  }
  th, td {
    border: 1px solid #444444;
  }
</style>
</head>
<body>
<p>QnABoard</p>
<div>게시글 리스트</div>
<table>
<thead><tr>
<td>제목</td>
<td>조회수</td>
<td>좋아요</td>
<td>첨부파일</td>
<td>글 작성 날짜</td>
</tr></thead>

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