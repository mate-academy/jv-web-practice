<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>index page</title>
</head>
<body>
<h1>List of drivers:</h1>
<table>
    <tr>
        <td>ID</td>
        <td>NAME</td>
        <td>LICENSE NUMBER</td>
    </tr>
    <c:forEach items="${drivers}" var="driver">
        <tr>
            <td><c:out value="${driver.id}" /></td>
            <td><c:out value="${driver.name}" /></td>
            <td><c:out value="${driver.licenseNumber}" /></td>
        </tr>
    </c:forEach>
</table>
<h2>Enter driver id to delete:</h2>
<form method="post" action="${pageContext.request.contextPath}/drivers/delete">
    Driver Id <input type="number" name="driver_id"><br>
    <button type="delete">Confirm</button>
</form>
</body>
</html>
