<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="urlPath" value="${pageContext.request.contentType }/resources"/>
<c:forEach var="e" items="${list }">
	<p>${e.no }
		<img src="resources/imgfile/${e.orifile }" style="width:800px">
		${e.uname }
	</p>
</c:forEach>
