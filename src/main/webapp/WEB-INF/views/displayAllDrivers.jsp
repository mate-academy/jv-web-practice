<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Get all Drivers</title>
</head>
<body>
<h1>List of drivers:</h1>
<table>
    <tr>
        <td>ID</td>
        <td>Name</td>
        <td>Driver Licence</td>
        <td>Delete</td>
    </tr>
    <jsp:useBean id="drivers" scope="request" type="java.util.List"/>
    <c:forEach items="${drivers}" var="driver">
        <tr>
            <td><c:out value="${driver.getId()}"/></td>
            <td><c:out value="${driver.getName()}"/></td>
            <td><c:out value="${driver.getLicenseNumber()}"/></td>
            <td>
                <button type="submit">
                    <a type="button"
                       href="${pageContext.request.contextPath}/drivers/delete?id=${driver.getId()}"
                >Delete</a>
                </button>
            </td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
