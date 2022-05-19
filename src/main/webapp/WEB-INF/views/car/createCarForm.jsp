<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Create Car</title>
</head>
<body>
<h1>Fill all of the fields below</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/createCarForm">
    Model <input type="text" name="model"><br>
    Manufacturer ID<input type="text" name="manufacturer ID"><br>
    <button type="submit">Confirm</button>
</form>
</body>
</html>
