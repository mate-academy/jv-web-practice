<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="../index.jsp"%>
<html>
<head>
    <title>Add a new car</title>
</head>
<body>
<h2>Add new car</h2>
<form method="post" action="${pageContext.request.contextPath}/cars/add">
    Model: <input type="text" name="model"><br><br>
    Manufacturer: <select name="manufacturer_id">
    <c:forEach items="${manufacturers}" var="manufacture">
        <option value="${manufacture.id}">${manufacture.name}</option>
    </c:forEach>
</select><br><br>
    <button type="submit">Create car</button>
</form>
</body>
</html>
