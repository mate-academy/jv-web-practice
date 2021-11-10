<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add driver to car</title>
</head>
<body>
<jsp:include page="../../menu.jsp"/>
<H1>Add driver to car</H1>
<form method="post" action="${pageContext.request.contextPath}/cars/drivers/add">
    <select name="carFromList">
        <c:forEach items="${cars}" var="car">
            <option value="${car.id}">${car.id}.${car.model} ${car.manufacturer.name}</option>
        </c:forEach>
    </select>
    <select name="driverFromList">
        <c:forEach items="${drivers}" var="driver">
            <option value="${driver.id}">${driver.id}.${driver.name}
                    ${driver.licenseNumber}</option>
        </c:forEach>
    </select>
    <button type="submit">Add</button>
</form>
</body>
</html>
