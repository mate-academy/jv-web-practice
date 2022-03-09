<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>All drivers</title>
</head>
<body>
<h2><a href="/index">Back to home page</a></h2>
<br>
<h2>
    Please indicate car name. <br>
    Car will be created without assigned drivers.
</h2>
<br>
<form method="post" action="${pageContext.request.contextPath}/cars/add">
    <label for="carName"><h2>Car name</h2></label>
    <input type="text" id="carName" name="carName"><br><br>
    <h2>Choose one of the manufacturers</h2>
    <table>
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Country</th>
        </tr>
        <c:forEach items="${manufacturers}" var="manufacturer">
            <tr>
                <td><input type="radio" id="id" name="id" value=<c:out value="${manufacturer.id}"/>> <c:out value="${manufacturer.id}"/> </td>
                <td><c:out value="${manufacturer.name}" /></td>
                <td><c:out value="${manufacturer.country}" /></td>
            </tr>
        </c:forEach>
    </table>
    <br><br>
    <input type="submit" value="Add car">
    <input type="reset">
</form>


</body>
</html>
