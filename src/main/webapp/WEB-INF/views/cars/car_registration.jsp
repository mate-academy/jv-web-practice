<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add new car</title>
</head>
<body>
<h1>Car registration form</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/add">
    MODEL <input type="text" name="model"><br>
    MANUFACTURER ID: <br/>
    <c:forEach items="${manufacturers}" var="manufacturer">
        <input type="radio" id="html" name="manufacturer_id" value="${manufacturer.id}" required>
        <label for="${manufacturer.id}">${manufacturer.name}</label><br>
    </c:forEach>
    <br/>
    <button type="submit">Confirm</button>
</form>
</body>
</html>
