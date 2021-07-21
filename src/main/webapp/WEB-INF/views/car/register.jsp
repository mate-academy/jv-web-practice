<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Car registration</title>
</head>
<body>
<h2><a href="/index">Main page</a></h2>
<h1>Please fill the form below</h1>

<form method="post" action="${pageContext.request.contextPath}/cars/register">
    Model <input type="text" required name="model"><br>
    Manufacturer Id <input type="number" required name="manufacturer_id"><br>
    <button type="submit">Confirm</button>
</form>
</body>
</html>
