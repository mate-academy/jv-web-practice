<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>List of drivers:</h1>
<table>
    <tr>
        <td>id</td>
        <td>Name</td>
        <td>License number</td>
    </tr>
        <c:forEach items="${drivers}" var="driver">
            <tr>
                <td><c:out value="${driver.id}" /></td>
                <td><c:out value="${driver.name}" /></td>
                <td><c:out value="${driver.licenseNumber}" /></td>
            </tr>
        </c:forEach>
</table>
<h1></h1>
<a type="button" href="/drivers/add"> Add a driver </a>
<h1></h1>
<a type="button" href="/manufacturers/add"> Add a manufacturer </a>
<h1></h1>
<a type="button" href="/cars/add"> Add a car </a>
<h1></h1>
<a type="button" href="/cars/add-driver"> Add a driver to car </a>
</body>
</html>
