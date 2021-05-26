<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Create a new Car</title>
</head>
<body>
<h1>Fill the form below to create a new Car</h1>

<form method="post" action="${pageContext.request.contextPath}/cars/create">
    Car's model <input type="text" name="car_model"><br>
    Select manufacturer <select name="manufacturer_id">
    <c:forEach items="${manufacturers}" var="manufacturer">
        <option value="${manufacturer.getId()}">${manufacturer.getName()}</option>
    </c:forEach>
</select><br>
    <button type="submit">Create a Car</button>
</form>
</body>
</html>