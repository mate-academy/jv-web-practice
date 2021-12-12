<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Crate Car</title>
</head>
<body>
<h1>Create car for DB</h1>
<form method="post" action="${pageContext.request.contextPath}/create/car">
    Model_name <input type="text" name="model"><br>
    Manufacturer <select name="manufacturer_id">
        <c:forEach items="${manufacturers}" var="manufacturer">
            <option value="${manufacturer.id}">${manufacturer.name}</option>
        </c:forEach>
    </select>
    <button type="submit">Confirm</button>
</form>
</body>
</html>