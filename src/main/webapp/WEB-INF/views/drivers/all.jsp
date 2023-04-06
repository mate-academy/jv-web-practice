<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>My team</title>
</head>
<body>
<h1>All drivers:</h1>
<table>
    <tr>
        <th>id</th>
        <th>Name</th>
        <th>Licence Number</th>
    </tr>
    <c:forEach items="${drivers}" var="driver">
        <tr>
            <td><c:out value="${driver.id}" /></td>
            <td><c:out value="${driver.name}" /></td>
            <td><c:out value="${driver.licenseNumber}" /></td>
            <td>
                <form method="post" action="${pageContext.request.contextPath}/drivers/delete?id=${driver.id}">
                <button type="submit">DELETE DRIVER</button>
                </form>
            </td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
