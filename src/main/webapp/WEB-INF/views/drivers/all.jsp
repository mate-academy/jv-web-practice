<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>All Drivers</title>
</head>
<body>
<h1>List of Drivers</h1>
<table>
    <tr>
        <th >ID</th>
        <th >NAME</th>
        <th >LICENSE_NUMBER</th>
    </tr>
    <c:forEach var="driver" items="${drivers}">
    <tr>
            <td>
                <c:out value="${driver.id}"/>
            </td>
            <td>
                <c:out value="${driver.name}"/>
            </td>
            <td>
                <c:out value="${driver.licenseNumber}"/>
            </td>
        <td>
            <tb>
                <a href="${pageContext.request.contextPath}/drivers/delete?id=${driver.id}">DELETE</a>
            </tb>
        </td>
    </tr>
    </c:forEach>
</table>

</body>
</html>
