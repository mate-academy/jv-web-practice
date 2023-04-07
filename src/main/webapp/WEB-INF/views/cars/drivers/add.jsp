<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add driver to car</title>
</head>
<body>
    <h2>Add driver to the car</h2>
    <form method="post" action="${pageContext.request.contextPath}/cars/drivers/add">
      Cars:<select name="car_id">
        <c:forEach items="${cars}" var="car">
            <option value="${car.id}"><c:out value="${car.manufacturer.name} : ${car.model}" /></option>
        </c:forEach>
      </select><br><br>
      Drivers:<select name="driver_id">
        <c:forEach items="${drivers}" var="driver">
            <option value="${driver.id}"><c:out value="${driver.name}" /></option>
        </c:forEach>
    </select><br><br>
        <input type="submit" value="Add">
    </form>
</body>
</html>
