<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>addDriverToCar</title>
</head>
<body>
<h1>Add Driver to Car</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/drivers/add">
    Driver <select name="driver_id" required="required">
        <option value="">Choice a driver</option>
        <c:forEach items="${drivers}" var="driver">
            <option value="<c:out value="${driver.id}"/>">
                <table>
                    <tr>
                        <td><c:out value="${driver.name}"/></td>
                        <td><c:out value="${driver.licenseNumber}"/></td>
                    </tr>
                </table>
            </option>
        </c:forEach>
    </select><br>
    Car <select name="car_id" required="required">
        <option value="">Choice a car</option>
        <c:forEach items="${cars}" var="car">
            <option value="<c:out value="${car.id}"/>">
                <table>
                    <tr>
                        <td><c:out value="${car.model}"/></td>
                    </tr>
                </table>
            </option>
        </c:forEach>
    </select><br>
    <button type="submit">Add driver to car</button>
</form>
</body>
</html>
