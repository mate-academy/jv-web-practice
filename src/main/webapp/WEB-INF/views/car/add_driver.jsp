<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>All driver to car</title>
</head>
<%@include file="/WEB-INF/views/headers/heder.jsp"%><br>
<body>
<h1>Please write the information in the fields</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/drivers/add">
    ID Car <input type="text" name="carId"><br>
    ID Driver <input type="text" name="driverId"><br>
    <button type="button">Confirm</button>
</form>
</body>
</html>
