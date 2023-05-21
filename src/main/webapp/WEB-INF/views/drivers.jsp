<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Drivers</title>
    <style>
        table, th, td {
            border: 1px solid black;
            border-collapse: collapse;
        }
    </style>
</head>
<body>
    <a href="${pageContext.request.contextPath}/drivers/add"><h3>Add new driver</h3></a>
    <table>
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>License number</th>
        </tr>
        <c:forEach items="${drivers}" var="driver">
            <tr>
                <td>
                    <c:out value="${driver.getId()}" />
                </td>
                <td>
                    <c:out value="${driver.getName()}" />
                </td>
                <td>
                    <c:out value="${driver.getLicenseNumber()}" />
                </td>
                <td>
                    <form method="post" action="${pageContext.request.contextPath}/drivers/delete">
                        <input type="hidden" name="id" value="${driver.getId()}" />
                        <button type="submit">delete this driver</button>
                    </form>
                </td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>
