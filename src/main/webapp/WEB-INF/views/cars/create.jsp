<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create Car</title>
</head>
<body>
<h1>Create Car</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/add">
    <label for="model">Model:</label>
    <input type="text" id="model" name="model" required><br>
    <label for="manufacturer_id">Manufacturer:</label>
    <select id="manufacturer_id" name="manufacturer_id">
        <c:forEach items="${manufacturers}" var="manufacturer">
            <option value="${manufacturer.id}">${manufacturer.name}</option>
        </c:forEach>
    </select><br>
    <input type="submit" value="Create">
</form>
</body>
</html>
