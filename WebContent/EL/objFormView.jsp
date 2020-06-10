<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%-- EL 내장객체 - HTTP 요청 파라미터 
		 여러개의 데이터가 넘어올땐 paramValues --%>
	<h3>이름 : ${param.name}</h3> <%-- param이 서블릿의 getParameter와 동일하다. --%>
	<h3>아이디 : ${param.id}</h3>
	<h3>비밀번호 : ${param.pwd}</h3>
	<br><br>
	
	<%-- EL 내장객체 Scope 사용 --%>
	<ul>
		<li>${pageScope.pName}</li> 	<%-- pageScope라서 데이터가 넘어오지 않는다. --%>
		<li>${requestScope.rName}</li> 		<%-- requestScope도 요청으로 넘어오지 않게때문에 
									   데이터가 넘어오지 않는다 --%>
		<li>${sessionScope.sName}</li> 		<%-- 데이터가 넘어온다 --%>
		<li>${applicationScope.aName}</li> 	<%-- 데이터가 넘어온다 --%>
	</ul>
</body>
</html>