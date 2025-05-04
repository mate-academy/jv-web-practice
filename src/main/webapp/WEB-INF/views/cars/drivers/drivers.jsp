<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Show all drivers for a car</title>
</head>
<body>
<h2>List of all drivers for a car with id: <c:out value="${carId}"/> model: <c:out value="${model}"/></h2>
<table>
    <tr>
        <td style="padding: 10px">ID</td>
        <td style="padding: 10px">Name</td>
        <td style="padding: 10px">License number</td>
    </tr>
    <c:forEach items="${drivers}" var="driver">
        <tr>
            <td style="padding: 10px"><c:out value="${driver.id}"/></td>
            <td style="padding: 10px"><c:out value="${driver.name}"/></td>
            <td style="padding: 10px"><c:out value="${driver.licenseNumber}"/></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
