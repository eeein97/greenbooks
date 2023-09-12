<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet">
<%@ include file="/include/header.jsp" %>
<div id="maincon">
<h2>도서등록하기</h2>
<form action="writer_process.jsp" method="post">
	<table>
	
		<tr>
			<td>제목</td>
			<td><input type="text" name="title"/></td>
		</tr>
		<tr>
			<td>글쓴이</td>
			<td><input type="text" name="wirter"/></td>
		</tr>
		<tr>
			<td>출판사</td>
			<td><input type="text" name="publisher"/></td>
		</tr>
		<tr>
			<td>가격</td>
			<td><input type="text" name="price"/></td>
		</tr>
		<tr>
			<td>출판일</td>
			<td><input type="date" name="publdate"/></td>
		</tr>
		<tr>
			<td><input type="submit" name="등록" value="등록" /> <input type="button" name="취소" value="취소"><a href="main.jsp"></a></td>
		</tr>
	</table>
</form>
<div>

<%@ include file="/include/footer.jsp" %>