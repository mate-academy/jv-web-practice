<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>New car registration</title>
</head>
<body>
<h1>Enter a new car data below:</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/create">
    Car model         <input type="text" name="model"><br>
    Manufacturer's id <input type="number" name="manufacturerId"><br>
    <button type="submit">Create</button>
</form>
<h1>Choose manufacturer's id from list:</h1>
<table>
    <tr>
        <td>ID</td>
        <td>NAME</td>
        <td>COUNTRY</td>
    </tr>

    <jsp:useBean id="manufacturers" scope="request" type="java.util.List"/>
    <c:forEach items="${manufacturers}" var="manufacturer">
        <tr>
            <td><c:out value="${manufacturer.id}" /></td>
            <td><c:out value="${manufacturer.name}" /></td>
            <td><c:out value="${manufacturer.country}" /></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
