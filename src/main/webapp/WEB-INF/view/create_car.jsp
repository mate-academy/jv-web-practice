<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Create Driver</title>
</head>
<body>
<form method="post" action="${pageContext.request.contextPath}/cars/create">
    Manufacturer ID <input min="1" required="required" type = "number" name = "manufacturer_id"><br>
    Model <input required="required" type = "text" name = "model"><br>
    <button type="submit">Create</button>
</form>
</body>
</html>
