<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="JDBC.JDBCConnect"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/include/header.jsp" %>
<link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet">

<div id="maincon">
	<h3>도서목록</h3>
	<% 
	//게시물 없을때
	
	%>
	<%
	//DB연결
	JDBCConnect jdbc = new JDBCConnect();
	//쿼리문 생성
	String sql = "select title, writer, publisher, price, publdate from books";
	Statement stmt = jdbc.con.createStatement();
	//쿼리수행
	ResultSet rs = stmt.executeQuery(sql);
	%>
	<table>
		<tr>
			<td>번호</td>
			<td>제목</td>
			<td>글쓴이</td>
			<td>출판사</td>
			<td>가격</td>
			<td>출판일</td>
		</tr>
		<tr>
			<%
			while (rs.next()) {
				String title = rs.getString("title");
				String writer = rs.getString("writer");
				String publisher = rs.getString("publisher");
				String price = rs.getString("price");
				String publdate = rs.getString("publdate");
				out.println(String.format("%s %s %s %s %s", title, writer, publisher, price, publdate) + "</br>");
			}
			jdbc.close();
			%>
		</tr>
	</table>
</div>
<%@ include file="/include/footer.jsp" %>