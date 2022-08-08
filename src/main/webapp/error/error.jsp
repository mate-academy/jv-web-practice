<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% Exception exception = pageContext.getException();%>
<html>
<head>
    <title>Exception</title>
</head>
<body>
<h2>Exception occurred while processing the request</h2>
<p><b>Type:</b> <%= exception.getClass()%></p>
<p><b>Message:</b> <%= exception.getMessage()%></p>
<c:if test="${pageContext.getException().getCause() != null}">
    <p><b>Cause:</b></p>
    <p><%= exception.getCause().getClass()%></p>
    <p><%= exception.getCause().getMessage()%></p>
</c:if>
</body>
</html>