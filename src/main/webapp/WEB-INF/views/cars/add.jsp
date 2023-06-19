<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>add new car</title>
</head>
<body>
<h1>Enter data for the new machine</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/add">

    Model <label>
    <input type="text" name="model">
</label>
    <br>

    Manufacturer <label>
    <input type="text" name="manufacturer">
</label>
    <br>

    <button type="submit">Confirm</button>
</form>
</body>
</html>

