<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<ul>
	<li><a href="/springmvc_0128/">Home</a></li>
	<c:choose>
		<c:when test="${sessionScope.sessionID == null}">
			<li><a href="">로그인</a></li>
			<li><a href="joinForm">회원가입</a></li>
		</c:when>
			<c:when test="${sessionScope.sessionID != null}">
			<li><a href="">로그아웃</a></li>
			<li><a href="">마이페이지</a></li>
		</c:when>
	</c:choose>
	<li><a href="">게시판</a></li>
	<li><a href="upform">파일데모</a></li>
	<li><a href="survey">설문조사</a></li>
	<li><a href="result">설문결과</a></li>
	<c:if test="${sessionScope.sessionID != null}">
	<li>${sessionScope.sessionName}님 반갑습니다</li>
	</c:if>
	
</ul>