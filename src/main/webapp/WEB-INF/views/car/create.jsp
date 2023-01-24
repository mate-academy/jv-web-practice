<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create a car</title>
</head>
<body>
<form action="<c:url value="/index"/>">
    <input type="submit" value=" <- To main page "/>
</form>
<h1>Create a car</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/add">
    <label for="model">Model:</label><br>
    <input type="text" id="model" name="model" required><br>
    <label for="manufacturer_id">Manufacturer Id:</label> <br>
    <input type="number" id="manufacturer_id" name="manufacturer_id" required><br>
    <button type="submit">Create</button>
    <br>
    <c:if test="${id != null}">
        Can't find manufacturer by id ${id} in database, try again
    </c:if>
</form>
</form>
</body>
</html>
