<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>All Cars</title>
</head>
<body>
<table>
    <tr>
      <th>Id</th>
      <th>Model</th>
      <th>Manufacturer Name</th>
      <th>Drivers</th>
    </tr>
    <c:forEach items="${cars}" var="car">
        <tr>
            <td><c:out value="${car.id}" /></td>
            <td><c:out value="${car.model}" /></td>
            <td><c:out value="${car.manufacturer.name}" /></td>
            <td>
                <c:if test="${empty car.drivers}">
                    <c:out value="The car has no driver" />
                </c:if>
                <c:if test="${not empty car.drivers}">
                    <c:forEach items="${car.drivers}" var="driver">
                        <a href="${pageContext.request.contextPath}/cars/drivers/delete?carId=${car.id}&driverId=${driver.id}">
                            <c:out value="${driver.name}" />
                        </a>
                    </c:forEach>
                </c:if>
            </td>
            <td>
                <a href="${pageContext.request.contextPath}/cars/delete?id=${car.id}">
                    <c:out value="DELETE" />
                </a>
            </td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
