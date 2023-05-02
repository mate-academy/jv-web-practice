<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Let's create a car</title>
</head>
<body>
<h1>Let's create a new car in our service</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/create">
    Model <input type="text" name="model"><br><br>
    Manufacturer <select name="manufacturer_id">
        <c:forEach items="${manufacturers}" var="manufacturer">
            <option value="${manufacturer.id}">
                <c:out value="${manufacturer.name}" />
                -
                <c:out value="${manufacturer.country}" />
            </option>
        </c:forEach>
    </select> <br><br>
    <button type="submit">LET`S GO</button>
</form>
</body>
</html>
