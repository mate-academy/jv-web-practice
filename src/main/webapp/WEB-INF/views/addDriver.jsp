<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create Car</title>
</head>
<body>
<h1>Please fill the form below</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/drivers/add">
    Car id: <input type="text" placeholder="Chose car id from table below" size="30"
                   name="car_id"><br>
    Driver id: <input type="number" placeholder="Chose driver id from table below" size="30"
                      name="driver_id"><br>
    <button type="submit">Confirm</button>
</form>
<p>
    <a href="${pageContext.request.contextPath}/">
        <button type="submit">MAIN MENU</button>
    </a>
</p>
<br>
<%@include file="carsAll.jsp" %>
<br>
<%@include file="driversAll.jsp" %>
</body>
</html>
