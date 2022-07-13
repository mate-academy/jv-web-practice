<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<title>Get all drivers</title>
</head>
<body>
<h1>List of drivers</h1>
<table>
    <tr>
        <td>NAME</td>
        <td>LICENSE_NUMBER</td>
        <td>DELETE</td>
    </tr>
    <c:forEach items="${drivers}" var="driver">
        <tr>
            <td><c:out value="${driver.id}" /></td>
            <td><c:out value="${driver.name}" /></td>
            <td><c:out value="${driver.licenseNumber}" /></td>
            <td><a href="${pageContext.request.contextPath}/drivers/delete?id=${driver.id}">delete driver</a></td>
        </tr>
    </c:forEach>
</table>
</body>
<footer>
    <a href="${pageContext.request.contextPath}/drivers/create">Create new driver</a>
    <a href="${pageContext.request.contextPath}/cars/addDriver">Add driver to car</a>
    <a href="${pageContext.request.contextPath}/index">To main menu</a>
</footer>
</html>
