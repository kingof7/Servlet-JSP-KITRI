<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- jsp 파일은 컴파일을 하게 되면 내부적으로 서블릿 파일로 바뀌게 된다. -->
<!-- html과 java를 자유롭게 다루기 위한게 JSP이다. -->
	<div>JAVA 명령어는 JSTL, EL을 사용해야 한다.</div>
	<!-- HTML 주석 - 브라우저 개발자 도구에서 보인다. -->
	<%-- JSTL 주석 - 브라우저의 개발자도구에서 볼 수 없다. --%>
	
	<%-- 데이터, 연산자 --%>
	<h3> EL - 1.출력, 연산자 가능 (직접데이터 사용가능, 변수(JSTL))</h3>
	<ol>
		<li>수 출력 : ${10}, ${99.99}</li>
		<li>문자(문자열) 출력 : ${"apple"},${'apple'}</li>
		<li>연산 : ${10+20},${10-20},${4/5},${5%7}</li>
		<li>작다 : ${2<3}, ${2 lt 3}</li>
		<li>크다 : ${2>3}, ${2 gt 3}</li>
		<li>작거나 같다 : ${2.5<=3.5}, ${2 le 3}</li>
		<li>크거나 같다 : ${2.5>=3.5}, ${2 ge 3}</li>
		<li>논리연산자 : ${"&&, AND, ||, OR, !, NOT"}</li>
		<li>빈문자열 ${null}</li> <!-- null 예외가 나지 않는다. -->
		<%-- JSP에서 오류가 나면 서버 컴파일 되는 자바파일을 찾아 보면 편하다. --%>
	</ol>
</body>
</html>