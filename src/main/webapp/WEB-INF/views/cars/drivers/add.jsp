<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>add driver to car</title>
</head>
<body>
<h1>adding driver to car</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/drivers/add">
    <form action="list" method="post">
        select driver:
        <select name="driver">
            <c:forEach items="${drivers}" var="driver">
                <option value="${driver.id}">${driver.name}</option>
            </c:forEach>
        </select><br><br>
        select car:
        <select name="car">
            <c:forEach items="${cars}" var="car">
                <option value="${car.id}">${car.model}</option>
            </c:forEach>
        </select>
        <br><br>
    <button type="submit">Add driver to car</button>
</form>
</form>
</body>
</html>
