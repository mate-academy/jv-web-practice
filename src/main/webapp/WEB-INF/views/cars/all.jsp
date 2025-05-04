<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
    <head>
     <title>View all cars</title>
    </head>
    <body>
        <h1>View all cars</h1>
        <table>
            <tr>
                <td>Id</td>
                <td>Manufacturer</td>
                <td>Model</td>
                <td>Drivers</td>
            </tr>
            <c:forEach items="${cars}" var="car">
                <tr>
                    <td><c:out value="${car.id}"/></td>
                    <td><c:out value="${car.manufacturer.name}"/></td>
                    <td><c:out value="${car.model}"/></td>
                    <td>
                        <c:forEach items="${car.drivers}" var="driver">
                            <c:out value="${driver.name}"/>
                        </c:forEach>
                    </td>
                    <td><a href="${pageContext.request.contextPath}/cars/delete?id=${car.id}">delete</a></td>
                </tr>
            </c:forEach>
        </table>
    </body>
</html>
