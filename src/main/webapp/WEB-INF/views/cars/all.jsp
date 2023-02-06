<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>All cars</title>
</head>
<body>
<h1>
    List of cars:
</h1>
<table>
    <tr>
        <th style="border: solid black 1px">
            DRIVERS
        </th>
        <th style="border: solid black 1px">
            CAR ID
        </th>
        <th style="border: solid black 1px">
            CAR MODEL
        </th>
        <th style="border: solid black 1px">
            MANUFACTURER NAME
        </th>
        <th style="border: solid black 1px">
            DELETE
        </th>
    </tr>
    <c:forEach items="${cars}" var="car">
            <c:forEach items="${car.drivers}" var="driver">
                <tr>
                    <td style="border: solid black 1px">
                        <c:out value="${driver.name}"/>
                    </td>
                <td style="border: solid black 1px">
                    <c:out value="${car.id}"/>
                </td>
                <td style="border: solid black 1px">
                    <c:out value="${car.model}"/>
                </td>
                <td style="border: solid black 1px">
                    <c:out value="${car.manufacturer.name}"/>
                </td>
                <td style="border: solid black 1px">
                    <a href="${pageContext.request.contextPath}/cars/delete?id=${car.id}">
                        delete
                    </a>
                </td>
                </tr>
            </c:forEach>
    </c:forEach>
</table>
</body>
</html>
