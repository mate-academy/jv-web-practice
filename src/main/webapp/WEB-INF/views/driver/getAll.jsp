<%--
  Created by IntelliJ IDEA.
  User: ilia
  Date: 25.05.2021
  Time: 13:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Get All Drivers</title>
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
            <td><c:out value="${driver.id}" /> </td>
            <td><c:out value="${driver.name}" /> </td>
            <td><c:out value="${driver.licenseNumber}" /> </td>
            <td><a href="${pageContext.request.contextPath}/drivers/delete?id=${driver.id}">delete this driver</a></td>

        </tr>
    </c:forEach>
</table>
</body>
</html>
