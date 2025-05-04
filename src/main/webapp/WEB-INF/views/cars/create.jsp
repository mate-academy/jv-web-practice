<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>add car</title>
</head>
<body>
<h1>Enter the model and select the manufacturer from the list</h1>
<br>
<form method="post" action="${pageContext.request.contextPath}/cars/add">
    Model <input type="text" name="carModel"/><br>
    Manufacturer <select name="manufacturer">
    <c:forEach items="${manufacturers}" var="manufacturer">
        <option value="${manufacturer.getId()}">${manufacturer.getName()}</option>
    </c:forEach>
</select>
    <button type="submit">add car</button>
</form>
<br>
</body>
</html>
