<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>EL - 2. setter, getter 기능을 사용할 수 있다.</h3>
	<jsp:useBean id="member" class="com.java.el.MemberInfo"/> <%-- MemberInfo 객체 발생 --%>
												<%-- MemberInfo member = new MemberInfo(); 와 동일하다. --%>
	${member.setName("이영자")}
	${member.setId("Lee")}
	${member.setPwd("123")}
	
	<h3>${member.getName()}</h3> <%-- getter setter는 거의 사용하지 않고 밑에와 같이 사용한다. --%>
	<h3>${member.getId()}</h3>
	<h3>${member.getPwd()}</h3>
	<br><br>
	<h3>${member.name}</h3> <%-- 변수를 호출한거 처럼 보이지만 내부적으로 getter를 이용한다. --%>
	<h3>${member.id}</h3>	<%-- private라 변수는 호출할 수 없다. --%>
	<h3>${member.pwd}</h3>
	<br><br>
</body>
</html>