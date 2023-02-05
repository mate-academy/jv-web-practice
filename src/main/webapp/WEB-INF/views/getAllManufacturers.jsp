<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>All manufacturers</title>
    <style>
        table, td, th {
            border: 1px solid;
            border-collapse: initial;
            color: darkslateblue;
        }
    </style>
</head>
<body>
<h1>All manufacturers</h1>
<table>
    <tr>
        <th>ID</th>
        <th>Name</th>
        <th>Country</th>
    </tr>
    <c:forEach items="${manufacturers}" var="manufacturer">
        <tr>
            <td><c:out value="${manufacturer.getId()}"/></td>
            <td><c:out value="${manufacturer.getName()}"/></td>
            <td><c:out value="${manufacturer.getCountry()}"/></td>
        </tr>
    </c:forEach>
</table>
<form method="get"
      action="${pageContext.request.contextPath}/createManufacturers">
    <button type="submit">
        Add new manufacturer
    </button>
</form>
<form method="get"
      action="${pageContext.request.contextPath}/index">
    <button type="submit">
        back to service
    </button>
</form>
</body>
</html>
