<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Add driver to car</title>
</head>
<body>
<h1>Add driver for car with id: ${carId}</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/add_driver">
    <input type="hidden" name="carId" value="${carId}">
    <label for="driver">Drivers</label><br>
    <select id="driver" name="driver">
        <c:forEach var="driver" items="${drivers}">
            <option value="${driver.id}">${driver.name}</option>
        </c:forEach>
    </select><br><br>
    <input type="submit" value="Submit">
</form>
</body>
</html>
