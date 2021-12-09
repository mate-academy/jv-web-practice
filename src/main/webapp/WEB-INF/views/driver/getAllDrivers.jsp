<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Get all drivers</title>
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
<h1>Delete driver</h1>
<form method="post" action="${pageContext.request.contextPath}/drivers/delete">
    <select name="driver_id">
        <c:forEach items="${drivers}" var="driver">
            <option value="${driver.id}">${driver.name}</option>
        </c:forEach>
    </select>
    <button type="submit">DELETE DRIVER</button>
</form>
</body>
</html>
