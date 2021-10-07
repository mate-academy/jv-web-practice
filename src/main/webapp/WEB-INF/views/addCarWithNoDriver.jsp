<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Yelinskyi</title>
</head>
<body>
<h1>Create new Car!</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/add">
    CarModel <input type="text" name="carmodel">
    CarManufacturerID <input type="number" name="carmanufacturerid">
    <button type="submit">Confirm</button>
</form>
<jsp:include page="manufacturers.jsp"/>
</body>
</html>
