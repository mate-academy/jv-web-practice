<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Registration of new Manufacturer</title>
</head>
<body>
<h3>List Of All Manufacturers:</h3>
<form>
    <c:forEach items="${manufacturersList}" var="manufacturer">
        <option value="${manufacturer.id}">${manufacturer.id}${"  "}${manufacturer.name}
                ${" "}${manufacturer.country}</option>
    </c:forEach>
</form>
<h2>Input new Manufacturer`s data:</h2>
<form method="post" action="${pageContext.request.contextPath}/manufacturers/new">
    Manufacturer name : <input type="text" name="manufacturername" placeholder="Manufacturer name"><br>
    Manufacturer country: <input type="text" name="manufacturercountry" placeholder="Manufacturer country"><br>
    <button type="submit"> Input</button>
</form>
</body>
</br>
<a href="${pageContext.request.contextPath}/index">Back to main menu</a>
</body>
</html>
