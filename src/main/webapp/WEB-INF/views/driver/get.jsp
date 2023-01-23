<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Get all drivers</title>
</head>
<body>
<form action="<c:url value="/index"/>">
    <input type="submit" value=" <- To main page "/>
</form>
<h1>List of drivers:</h1>
<table>
<tr>
    <td>Id</td>
    <td>Name</td>
    <td>License Number</td>
</tr>
<br>
<br>
<c:forEach items="${drivers}" var="driver">
    <tr>
        <td><c:out value="${driver.id}"/><</td>
        <td><c:out value="${driver.name}"/><</td>
        <td><c:out value="${driver.licenseNumber}"/><</td>
        <td><form method="post" action="${pageContext.request.contextPath}/drivers">
            <button type="submit" name="delete" value="${driver.id}">Delete</button>
        </form></td>
    </tr>
</c:forEach>
</table>
</body>
</html>
