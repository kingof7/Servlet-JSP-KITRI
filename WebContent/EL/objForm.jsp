<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="objFormView.jsp" method="get">
		<label>이름</label>
		<input type="text" name="name"/>
		<br><br>
		<label>아이디</label>
		<input type="text" name="id"/>
		<br><br>
		<label>비밀번호</label>
		<input type="password" name="pwd"/>
		<br><br>
		<input type="submit" value="전송"/>
		<input type="reset" value="취소"/>
	</form>
	<%-- 자바 코드 작성이 가능하다. --%>
	<% java.util.Date date = new java.util.Date(); 
	   // 내장 객체로 지원되는 scope들
	   // pageScope : 현재 페이지에서만 데이터(변수) 공유 가능
	   	  pageContext.setAttribute("pName","apple");
	   // requestScope : 요청시(request객체) 데이터 공유 (form, include, forward)
	   	  request.setAttribute("rName", "banana");
	   // sessionScope : 하나의 웹브라우저가 시작하고 종료할때까지 공유되는 데이터(변수)
	   	  session.setAttribute("sName", "melon");
	   // application : 하나의 웹애플리케이션이 시작하고 종료될때까지 공유되는 데이터(변수)
	   // 				예를 들어 ) 웹사이트 방문자 수 뿌려줄때;
		  application.setAttribute("aName", "watermelon");
	%>
	
</body>
</html>