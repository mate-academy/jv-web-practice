<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Car form</title>
</head>
<body>
<form method="POST" action="${pageContext.request.contextPath}/cars/add">
    Model: <input type="text" name="model"><br/>
    Manufacturer id: <input type="text" name="manufacturer_id"/>
    <input type="submit" value="Submit"/>
</form>
</body>
</html>
