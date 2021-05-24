<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create new car</title>
</head>
<body>
<h1>Please, crete new record about car!</h1>
<form name="loginForm" method="post" action="${pageContext.request.contextPath}/cars/add">
    Model: <input type="text" name="model"/> <br/>
    Manufacturer ID: <input type="text" name="manufacturer_id"/> <br/>
    <button type="submit">Confirm</button>
</form>
</body>
</html>
