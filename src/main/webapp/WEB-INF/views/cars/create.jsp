<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false"%>
<html>
<head>
    <title>Create car</title>
</head>
<body>
<h1>Please fill the form below</h1>

<form method="post" action="${pageContext.request.contextPath}/cars/create">
    Model <input type="text" name="carModel"><br>
    Manufacturer's id <input type="number" name="manufacturerId"><br>
    <button type="submit">Confirm</button>
</form>
</body>
</html>
