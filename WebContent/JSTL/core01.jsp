<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%-- JSTL (JSP Standard Tag Library) : Java 언어를 태그로 사용하여 쓸 수 있다.
		 CORE, XML, FMT, SQL, Function과 같은 기능들이 있다.
		 JSTL은 위에 taglib을 선언해줘야 사용할 수 있다.
		 싱글톤이다.
	 --%>
	 <h3> 변수 선언</h3>
	 <c:set var="su" value="10"/>
	 <c:set var="imsi" value=" ${20}"/>
	 <h3>${su} / ${ imsi }</h3>
	 <c:set var="msg" value="${'Hi'}" scope="page"/> <%-- scope를 명시해서 데이터가 
	 														살아있는 범위를 정할 수 있다 
	 														page(기본값), request, session, application--%>
	 <c:set var="age" value="23"/>
	 <div>
	 	메시지 : ${ msg } <br>
	 	나이 : ${ age }
	 </div>
	 <br><br>
	 <%-- Member 객체를 c:set을 이용하여 각 속성값을 setter 해줘서 
	 	  데이터를 삽입해준다. --%>
	 <jsp:useBean id="member" class="com.java.el.MemberInfo"/>
	 <c:set target="${member}" property="name" value="홍길동"/> <%--value = ${param.name} --%>
	 <c:set target="${member}" property="id" value="abc123"/>
	 <c:set target="${member}" property="pwd" value="1234"/>
	 
	 <h3>${member.name}</h3>
	 <h3>${member.id}</h3>
	 <c:set var="id" value="${member.id}" scope="session"/> <%-- 세션스코프로 등록하여 세션으로 이용가능 --%>
	 <h3>${member.pwd}</h3>
</body>
</html>