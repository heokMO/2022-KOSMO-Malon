<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<link rel="stylesheet" href="resources/css/style.css" type="text/css"/>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
</head>
<body>
	<div id="wrap">
		<tiles:insertAttribute name="header"/>
		<div id="navigation">
			<tiles:insertAttribute name="menu"/>
		</div>
		<tiles:insertAttribute name="body"/>
		<tiles:insertAttribute name="footer"/>
	</div>
</body>
</html>