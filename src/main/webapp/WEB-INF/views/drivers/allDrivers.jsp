<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>All drivers</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
</head>
<body>
<a href="${pageContext.request.contextPath}/">Go to Action menu</a>
<h2>List of drivers:</h2>
<table>
    <tr>
        <th>Id</th>
        <th>Driver</th>
        <th>License_number</th>
        <th>Action</th>
    </tr>
    <c:forEach var="driver" items="${drivers}">
        <tr>
            <td><c:out value="${driver.id}"/></td>
            <td><c:out value="${driver.name}"/></td>
            <td><c:out value="${driver.licenseNumber}"/></td>
            <td><a href="${pageContext.request.contextPath}/drivers/delete?id=${driver.id}">
                Delete the driver with id=${driver.id} from DB</a></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>