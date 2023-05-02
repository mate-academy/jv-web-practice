<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>All Cars</title>
</head>
    <body>
        <h1>All drivers</h1>
        <table>
            <thead>
            <tr>
                <th>ID</th>
                <th>Model</th>
                <th>Manufacturer</th>
                <th>Drivers</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach items="${allCars}" var="car">
                <tr>
                    <td><c:out value="${car.id}" /></td>
                    <td><c:out value="${car.model}" /></td>
                    <td><c:out value="${car.manufacturer.getName()}" /></td>
                    <td>
                      <c:forEach items="${car.drivers}" var="driver">
                        <ul>
                          <li><c:out value="${driver.name}" /></li>
                        </ul>
                      </c:forEach>
                    </td>
                    <td><a href="${pageContext.request.contextPath}/cars/delete?id=${car.id}">Delete this car</a></td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </body>
</html>
