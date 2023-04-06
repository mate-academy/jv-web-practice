<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <%@ include file="/WEB-INF/views/buttons.jsp" %>
    <br>
    <title>Drivers</title>
</head>
<body>
<h1>List of drivers</h1>
<table>
    <tr>
        <th>ID</th>
        <th>NAME</th>
        <th>LICENSE NUMBER</th>
    </tr>
    <c:forEach items="${drivers}" var="driver">
        <tr>
            <td><c:out value="${driver.id}"/></td>
            <td><c:out value="${driver.name}"/></td>
            <td><c:out value="${driver.licenseNumber}"/></td>
            <td>
                <form method="post" action="${pageContext.request.contextPath}/drivers/delete">
                    <input type="hidden" name="id" value="${driver.id}">
                    <button type="submit">Delete</button>
                </form>
            </td>
            <td>
                <form method="put" action="${pageContext.request.contextPath}/drivers/update">
                    <input type="hidden" name="id" value="${driver.id}">
                    <button type="submit">Update</button>
                </form>
            </td>
        </tr>
    </c:forEach>
</table>
<form method="post" action="${pageContext.request.contextPath}/drivers/add">
    <label>Name</label>
    <input type="text" name="name">
    <label>licenceNumber</label>
    <input type="text" name="licenceNumber">
    <button type="submit">Create Driver</button>
</form>
</body>
</html>
