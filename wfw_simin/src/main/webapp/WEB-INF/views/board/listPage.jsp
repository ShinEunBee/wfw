<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지 게시판</title>
</head>
<body>

<table>
	<thead>
		<tr>
			<th>번호</th>
			<th>제목</th>
			<th>작성일</th>
			<th>작성자</th>
			<th>조회수</th>
		</tr>
	</thead>
	
	<tbody>
		<c:forEach items="${list}" var="list">
			<tr>
				<td>${list.bno}</td>
				<td>
					<a href = "/board/view?bno=${list.bno}">${list.title}</a>
				</td>
				<td>${list.regDate}</td>
				<td>${list.writer}</td>
				<td>${list.viewCnt}</td>
			</tr>
		</c:forEach>
	</tbody>
</table>

<c:if test="${prev}">
	 <span>[ <a href="/board/listPage?num=${startPageNum - 1}">◀</a> ]</span>
</c:if>

<c:forEach begin="${startPageNum}" end="${endPageNum}" var="num">
	  <span>
	 
	  <c:if test="${select != num}">
	   	<a href="/board/listPage?num=${num}">${num}</a>
	  </c:if>    
	  
	  <c:if test="${select == num}">
	   	<b>${num}</b>
	  </c:if>
	    
	 </span>
</c:forEach>

<c:if test="${next}">
	 <span>[ <a href="/board/listPage?num=${endPageNum + 1}">▶</a> ]</span>
</c:if>

</body>
</html>