<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>All drivers</title>
</head>
<body>
<h1>All drivers:</h1>
<tr>
    <td>Id</td>
    <td>Name</td>
    <td>License number</td>
</tr>
    <c:forEach items="${drivers}" var="driver">
        <tr>
            <td><c:out value="${driver.id}"/></td>
            <td><c:out value="${driver.name}"/></td>
            <td><c:out value="${driver.licenseNumber}"/></td>
        </tr>
    </c:forEach>
<br><a href="/index">To main</a>
</body>
</html>
