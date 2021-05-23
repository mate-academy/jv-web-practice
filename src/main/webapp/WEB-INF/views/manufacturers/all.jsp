<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>All manufacturers</title>
</head>
<body>
<h1>All manufacturers</h1>
<table>
    <td>ID</td>
    <td>Name</td>
    <td>Country</td>
    <c:forEach items="${manufacturers}" var="manufacturer">
        <tr>
            <td><c:out value="${manufacturer.id}" /> </td>
            <td><c:out value="${manufacturer.name}" /> </td>
            <td><c:out value="${manufacturer.country}" /> </td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
