<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<ul>
	<li><a href="/springmvc_0128/">Home</a></li>
	<c:choose>
		<c:when test="${sessionScope.sessionID == null}">
			<li><a href="">�α���</a></li>
			<li><a href="">ȸ������</a></li>
		</c:when>
			<c:when test="${sessionScope.sessionID != null}">
			<li><a href="">�α׾ƿ�</a></li>
			<li><a href="">����������</a></li>
		</c:when>
	</c:choose>
	<li><a href="">�Խ���</a></li>
	<li><a href="upform">���ϵ���</a></li>
	<li><a href="survey">��������</a></li>
	<li><a href="result">�������</a></li>
	<c:if test="${sessionScope.sessionID != null}">
	<li>${sessionScope.sessionName}�� �ݰ����ϴ�</li>
	</c:if>
	
</ul>