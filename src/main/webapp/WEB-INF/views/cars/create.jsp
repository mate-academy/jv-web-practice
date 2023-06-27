<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <%@include file='/WEB-INF/views/common/header.html' %>
</head>
<body>
<h1>Fill fields to create car:</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/create">
    Model <input type="text" name="model"><br>
    Manufacture id <input type="number" name="manufactureId"><br>
    <button type="submit">Confirm</button>
</form>
</body>
</html>
