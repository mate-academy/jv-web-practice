<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="<c:url value="/index"/>">
    <input type="submit" value=" <- To main page " />
</form>
<h1>List of manufacturers:</h1>
<table>
    <tr>
        <td>Id</td>
        <td>Name</td>
        <td>Country</td>
    </tr>
    <br>
    <br>
    <c:forEach items="${manufacturers}" var="manufacturer">
        <tr>
            <td><c:out value="${manufacturer.id}"/><</td>
            <td><c:out value="${manufacturer.name}"/><</td>
            <td><c:out value="${manufacturer.country}"/><</td>
            <td>
                <form action="${pageContext.request.contextPath}/manufacturers/delete">
                    <button type="submit" name="manufacturer_id" value="${manufacturer.id}">Delete</button>
                </form>
            </td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
