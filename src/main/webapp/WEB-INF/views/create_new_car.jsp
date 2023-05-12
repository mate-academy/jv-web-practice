<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>Add new car to database</h1>
<h3>Add an information below to add a new driver</h3>
<form method="post" action="${pageContext.request.contextPath}/create_new_car">
    Car model: <input type="text" name="carModel"> <br>
    Manufacturer:
    <select name="manufacturerId">
        <c:forEach items="${manufacturers}" var="manufacturer">
           <option value="${manufacturer.id}">${manufacturer.name}</option>
        </c:forEach>
    </select>
    <button type="submit">Submit</button>
</form>
</body>
</html>
