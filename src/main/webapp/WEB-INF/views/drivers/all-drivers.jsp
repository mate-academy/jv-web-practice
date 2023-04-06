<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Drivers</title>
</head>
<body>
<%@ include file="/WEB-INF/views/header.jsp"%><br>
<h3>List of drivers</h3>
<table>
    <tr>
        <td>ID</td>
        <td>Name</td>
        <td>License Number</td>
    </tr>
    <c:forEach items="${drivers}" var="driver">
        <tr>
            <td><c:out value="${driver.id}" /></td>
            <td><c:out value="${driver.name}" /></td>
            <td><c:out value="${driver.licenseNumber}" /></td>
            <td><form action="${pageContext.request.contextPath}/drivers/delete?id=${driver.id}" method="post">
                <button type="submit" name="delete_button" value="delete">DELETE</button>
            </form></td>
        </tr>
    </c:forEach>
</table><br>
<a href="${pageContext.request.contextPath}/drivers/add">
    <input type="button" value="Add new driver" />
</a>
</body>
</html>
