<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Display all manufacturers controller</title>
</head>
<body>
<h1>
    There are all the manufacturers in our DB:
</h1>
<table>
    <tr>
        <td>id</td>
        <td>name</td>
        <td>country</td>
    </tr>
    <c:forEach items="${manufacturers}" var="manufacturer">
        <tr>
            <td><c:out value="${manufacturer.id}" /> </td>
            <td><c:out value="${manufacturer.name}" /> </td>
            <td><c:out value="${manufacturer.country}" /> </td>
            <td><a href="${pageContext.request.contextPath}/manufacturer-delete?id=${manufacturer.id}">delete manufacturer ${manufacturer.id}</a></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
