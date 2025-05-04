<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>All drivers</title>
</head>
<body>
<table>
    <tr>
        <td>Id</td>
        <td>Name</td>
        <td>License number</td>
    </tr>
    <c:forEach items="${drivers}" var="driver">
        <tr>
            <td><c:out value="${driver.getId()}" /></td>
            <td><c:out value="${driver.getName()}" /></td>
            <td><c:out value="${driver.getLicenseNumber()}" /></td>
            <td>
                <a href="${pageContext.request.contextPath}/drivers/delete?id=${driver
                .getId()}"><button>delete this driver</button></a>
            </td>
        </tr>
    </c:forEach>
    <form action="${pageContext.request.contextPath}/drivers/add">
        <input type="submit" value="Add new Driver">
    </form>
</table>
</body>
</html>
