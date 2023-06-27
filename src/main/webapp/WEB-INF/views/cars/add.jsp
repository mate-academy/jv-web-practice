<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create a car</title>
</head>
<%@include file="../headers/mainHeader.jsp" %>
<body>
<h1>Please fill the form below</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/add">
    Model <input type="text" name="model" required><br>
    Manufacturer ID <input type="number" name="manufacturer_id" required><br>
    <button type="submit">Create</button>
</form>
</body>
</html>

