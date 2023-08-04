<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add new Car</title>
</head>
<body>
<h1>Please fill out the form below to add a new Car:</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/add">
    Car Model <input type="text" name="carModel"><br>

    Select a Category:&nbsp;
    <select name="manufacturer">
        <c:forEach items="${allManufacturers}" var="manufacturer">
            <option value="${manufacturer.id}">${manufacturer.name}</option>
        </c:forEach>
    </select>
    <br/><br/>
    <button type="submit">ADD CAR</button>
</form>

</body>
</html>
