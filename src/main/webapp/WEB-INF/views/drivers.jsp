<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <style >
        table, th, td {
            border: 1px solid black;
            border-collapse: collapse;
            vertical-align: middle;
            text-align: center;
        }
    </style>
    <title>Display all drivers</title>
</head>
<body>
<h3>List of drivers:</h3>
<table>
    <tr>
        <th>Id</th>
        <th>Name</th>
        <th>License number</th>
        <th>Delete button</th>
    </tr>
    <c:forEach items="${drivers}" var="driver">
        <tr>
            <td><c:out value="${driver.id}" /></td>
            <td><c:out value="${driver.name}" /></td>
            <td><c:out value="${driver.licenseNumber} "/></td>
            <td>
                <form method="post" action="${pageContext.request.contextPath}/drivers/delete">
                <button name="driverId" type="submit" value="${driver.id}"> Delete </button>
                </form>
            </td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
