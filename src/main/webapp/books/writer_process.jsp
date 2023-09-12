<%@page import="books.BooksDTO"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="JDBC.JDBCConnect"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<% request.setCharacterEncoding("utf-8"); %>
<%@ include file="/include/header.jsp" %>
<h2>도서등록하기</h2>
	<%
	BooksDTO dto = new BooksDTO();
	dto.setTitle("title");
	dto.setWriter("writer");
	dto.setPublisher("publisher");
	dto.setPrice("price");
	dto.setPubldate("publdate");
	
	//DAO객체를 통해 DB 
	
	
	//DB연결 - jbdc객체 생성
	JDBCConnect jdbc = new JDBCConnect();
	//입력값 준비
	String title = request.getParameter("title"); 
	String writer = request.getParameter("writer");
	String publisher = request.getParameter("publisher");
	String publdate = request.getParameter("publdate");
	String price = request.getParameter("price");
	
	String sql = "insert into books values(?,?,?,?,?)";
	PreparedStatement psmt = jdbc.con.prepareStatement(sql);
	psmt.setString(1,title);
	psmt.setString(2,writer);
	psmt.setString(3,publisher);
	psmt.setString(4,price);
	psmt.setString(5,publdate);
	int inResult = psmt.executeUpdate();
	out.println(inResult+"행 등록이 완료되었습니다.");
	//연결닫기
	jdbc.close();
	%>