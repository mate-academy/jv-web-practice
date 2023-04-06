<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 38097
  Date: 05.04.2023
  Time: 22:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>Add Driver</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/addDriver">
    Car <select name="car_id">
    <c:forEach items="${cars}" var="car">
        <option value="${car.id}">
            <c:out value="${car.id}" />
            <c:out value="${car.model}" />
            <c:out value="${car.manufacturer.name}" />
        </option>
    </c:forEach>
           </select>
    Driver <select name="driver_id">
    <c:forEach items="${drivers}" var="driver">
        <option value="${driver.id}">
            <c:out value="${driver.id}" />
            <c:out value="${driver.name}" />
        </option>
    </c:forEach>
           </select>
    <button type="submit">submit</button>
</form>
</body>
</html>
