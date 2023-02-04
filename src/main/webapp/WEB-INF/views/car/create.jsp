<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Create Car</title>
</head>
<body>
<h1>Please, fill the form below:</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/create">
    Car Model <input type="text", name="model"><br>
    Manufacturer ID <input type="text", name="manufacturer_id"><br>
    <button type="submit">Create!</button>
</form>
</body>
</html>
