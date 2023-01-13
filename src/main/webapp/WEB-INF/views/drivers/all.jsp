<%--
  Created by IntelliJ IDEA.
  User: Upgrade
  Date: 1/5/2023
  Time: 8:57 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>All drivers</title>
</head>
<body>
<table>
    <tr>
        <td><h3>Id</h3></td>
        <td><h3>Name</h3></td>
        <td><h3>License number</h3></td>
    </tr>
    <c:forEach items="${drivers}" var="driver">
        <tr>
            <td><c:out value="${driver.id}" /></td>
            <td><c:out value="${driver.name}" /></td>
            <td><c:out value="${driver.licenseNumber}" /></td>
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
