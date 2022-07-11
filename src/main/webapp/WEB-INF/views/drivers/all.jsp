<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Drivers</title>
</head>
<body>
<h1>List of drivers:</h1>
<table>
    <tr>
        <td>ID</td>
        <td>NAME</td>
        <td>LICENSE NUMBER</td>
        <td>DELETE</td>
    </tr>
    <jsp:useBean id="drivers" scope="request" type="java.util.List"/>
    <c:forEach items="${drivers}" var="driver">
        <tr>
            <td><c:out value="${driver.id}" /></td>
            <td><c:out value="${driver.name}" /></td>
            <td><c:out value="${driver.licenseNumber}" /></td>
            <td>
                <a href="${pageContext.request.contextPath}/drivers/delete?id=${driver.id}">
                    Delete this driver
                </a>
            </td>
        </tr>
    </c:forEach>
</table>
<br>
<form method="get" action="${pageContext.request.contextPath}/index">
    <button type="submit">Back</button>
</form>
</body>
</html>
