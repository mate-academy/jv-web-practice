<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Register a new manufacturer</title>
</head>
<body>
<h1>Input new Manufacturer data</h1>
<form method="post" action="${pageContext.request.contextPath}/manufacturers/add">
    Manufacturer name : <input type="text" name="manufacturer_name"> <br>
    Manufacturer country : <input type="text" name="manufacturer_country"> <br>
    <button type="submit">confirm</button>
</form>
<h3><a href="${pageContext.request.contextPath}/index">Home page</a></h3>
</body>
</html>
