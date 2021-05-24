<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create a car</title>
</head>
<body>
<h1>Please fill the form to create a car</h1>
<form name="post" method="post" action="${pageContext.request.contextPath}/cars/create">
    Car model: <input type="text" name="model"/> <br/>
    Manufacturer id: <input type="text" name="manufacturer id"/> <br/>
    <button type="submit">Confirm</button>
</form>
</body>
</html>
