<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<html>
<head>
    <title>Car Creation</title>
</head>
<body>
<h1>Fill the form below</h1>

<form method="post" action="${pageContext.request.contextPath}/cars/add">
    Model <input type="text" name="model"><br>
    Manufacturer Id <input type="number" name="manufacturerId"><br>
    <button type="submit">Confirm</button>
</form>
</body>
</html>