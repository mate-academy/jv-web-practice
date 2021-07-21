<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <style>
        form {
            text-align: center;
            margin-top: 200px
        }
    </style>
    <title>Add a new driver</title>
</head>
<body>
<form name="addDriverForm" method="post" action="${pageContext.request.contextPath}/drivers/add">
    Driver_ID: <input type="text" name="driver_id"/> <br/>
    Car_ID: <input type="text" name="car_id"/> <br/>
    <input type="submit" value="Add Driver"/>
</form>
<h1>All drivers:</h1>
<table border="1" align="left">
    <tr>
        <th>NAME</th>
        <th>LICENSE NUMBER</th>
    </tr>
    <c:forEach items="${drivers}" var="driver">
        <tr>
            <th><c:out value="${driver.name}"/></th>
            <th><c:out value="${driver.licenseNumber}"/></th>
        </tr>
    </c:forEach>

</table>
<h1 align="right">All cars:</h1>
<table border="1" align="right">
    <tr>
        <th>MODEL</th>
        <th>MANUFACTURER ID</th>
    </tr>
    <c:forEach items="${cars}" var="car">
        <tr>
            <th><c:out value="${car.model}"/></th>
            <th><c:out value="${car.manufacturer.getId()}"/></th>
        </tr>
    </c:forEach>
</table>
</body>
</html>
