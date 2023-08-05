<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create a new car</title>
</head>
<body>
<h1>Fill out the form to add a car</h1>
<form action = "${pageContext.request.contextPath}/cars/add" method = "POST">
    Model: <input type = "text" name = "model" required><br/>
    Manufacturer ID: <br/>
    <c:forEach items="${manufacturers}" var="manufacturer">
        <input type="radio" id="html" name="manufacturer_id" value="${manufacturer.id}" required>
        <label for="${manufacturer.id}">${manufacturer.name}</label><br>
    </c:forEach>
    <br/>
    <button type = "submit">Confirm</button>
</form>
</body>
</html>
