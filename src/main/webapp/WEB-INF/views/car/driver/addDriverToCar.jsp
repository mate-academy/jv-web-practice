<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>Create new car</title>
    </head>
    <body>
        <h1>Please, fill out the form below:</h1>
        <form method="post" action="${pageContext.request.contextPath}/cars/drivers/add">
            <select name="car_id">
                <c:forEach items="${cars}" var="car">
                    <option value="${car.getId()}">${car.getModel()}</option>
                </c:forEach>
            </select>
            <select name="driver_id">
                <c:forEach items="${drivers}" var="driver">
                    <option value="${driver.getId()}">${driver.getName()}</option>
                </c:forEach>
            </select>
            <button type="submit">add</button>
        </form>
    </body>
</html>
