<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>All Drivers</title>
</head>
<body>
<h1>Here is all our drivers:</h1>
<table>
    <tr>
        <td>ID</td>
        <td>Driver's name</td>
        <td>License Number</td>
        <td>Delete</td>
    </tr>
    <c:forEach items="${drivers}" var="driver">
        <tr>
            <td><c:out value="${driver.id}" /></td>
            <td><c:out value="${driver.name}" /></td>
            <td><c:out value="${driver.licenseNumber}" /></td>
            <td>
                <a href="${pageContext.request.contextPath}/drivers/all/delete?id=${driver.id}">
                    <button type="submit">delete</button>
                </a>
            </td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
