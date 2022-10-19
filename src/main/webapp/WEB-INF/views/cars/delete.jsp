<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Delete car</title>
</head>
<body>
<h1>Choose car:</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/delete">
    <div>
        Car: <select type="number" name="car_id">
        <c:forEach var="car" items="${cars}">
            <option value="<c:out value="${car.id}"/>"><c:out value="${car.model}"/></option>
        </c:forEach>
    </select>
    </div>
    <div>
        <button type="submit">Delete</button>
    </div>
</form>
</body>
</html>
