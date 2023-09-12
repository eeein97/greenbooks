<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet">
</head>
<body>
	<div>
		<header>
			<h1><a href="/greenbooks/main.jsp">북치기박치기</a></h1>
			
			<ul>
				<li><a href="#">회원가입</a></li>
				<li><a href="#">로그인</a></li>
				<li><a href="#">국내도서</a></li>
				<li><a href="/greenbooks/books/writer.jsp">도서등록</a></li>
			</ul>
		</header>
		<section id="container">
			<div id="contents">
			
			</div>
		</section>
	</div>
</body>
</html>