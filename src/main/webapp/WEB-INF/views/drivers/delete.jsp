<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Mining_1
  Date: 06.10.2022
  Time: 15:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Delete driver</title>
</head>
<body>
<form method="post" action="${pageContext.request.contextPath}/drivers/delete">
    <div>
        Driver: <select type="number" name="drivers_id">
        <c:forEach var="driverCar" items="${drivers}">
            <option value="<c:out value="${driverCar.id}"/>"><c:out value="${driverCar.name}"/></option>
        </c:forEach>
    </select>
    </div>

    <div>
        <button type="submit">Delete</button>
    </div>
</form>
</body>
</html>
