<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>All cars</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/WEB-INF/views/style.css" />
</head>

<body>
<h1>All cars</h1>
<table>
    <th> ID</th>
    <th> MODEL</th>
    <th> MANUFACTURER</th>
    <th> DRIVERS</th>
    <c:forEach items="${cars}" var="char">
        <tr>
            <td><c:out value="${car.id}"/></td>
            <td><c:out value="${car.model}"/></td>
            <td><c:out value="${car.manufacturer.name}"/></td>
            <td>
                <c:forEach items="${car.drivers}" var="driver">
                    <c:out value="${driver.name}"></c:out>
                </c:forEach>
            </td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
