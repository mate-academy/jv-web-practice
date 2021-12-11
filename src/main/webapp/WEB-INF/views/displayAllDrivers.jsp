<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>All drivers</title>
</head>
<body>
    <h1>All drivers : </h1><br>
    <table border="1">
        <tr>
            <td>ID</td>
            <td>NAME</td>
            <td>LICENSE_NUMBER</td>
            <td>DELETE</td>
        </tr>
        <c:forEach items="${drivers}" var="driver">
            <tr>
                <td><c:out value="${driver.getId()}" /></td>
                <td><c:out value="${driver.getName()}" /></td>
                <td><c:out value="${driver.getLicenseNumber()}" /></td>
                <td>
                    <a href="${pageContext.request.contextPath}/drivers/delete?id=${driver.id}">delete this driver</a>
                </td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>
