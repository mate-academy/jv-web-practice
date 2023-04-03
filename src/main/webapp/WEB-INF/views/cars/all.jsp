<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>ATMS-cars</title>
</head>
<body>
<a href="${pageContext.request.contextPath}/index">Home</a><br>
Implement adding cars and their list here<br>
Also there must be manufacturers list with corresponding id-s below<br>
<%@include file="/WEB-INF/views/manufacturers/all.jsp"%>
</body>
</html>
