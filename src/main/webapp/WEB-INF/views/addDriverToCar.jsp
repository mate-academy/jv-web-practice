<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Yelinskyi</title>
</head>
<body>
<h1>Add driver to car!</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/drivers/add">
    CarID <input type="number" name="carid">
    DriverID <input type="number" name="driverid">
    <button type="submit">Confirm</button>
</form>
<jsp:include page="cars.jsp" />
<jsp:include page="drivers.jsp" />
</body>
</html>
