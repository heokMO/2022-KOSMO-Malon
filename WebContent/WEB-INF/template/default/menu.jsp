<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<ul>
	<li><a href="/">Home</a></li>
	<c:choose>
		<c:when test="${sessionScope.sessionId == null}">
			<li><a href="/member/loginPage">로그인</a></li>
			<li><a href="/member/joinForm">회원가입</a></li>
		</c:when>
		<c:when test="${sessionScope.sessionId != null}">
			<li><a href="/member/logout" id="logout">로그아웃</a></li>
			<li><a href="">마이페이지</a></li>
		</c:when>
	</c:choose>
	<c:if test="${sessionScope.sessionId != null}">
	<h1>${sessionScope.sessionNick}님 반갑습니다</h1>
	</c:if>	
</ul>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script type="text/javascript">
	$('#logout').click(function(e){
		e.stopPropagation();
		alert("로그아웃 하시겠습니까?");
	});

</script>