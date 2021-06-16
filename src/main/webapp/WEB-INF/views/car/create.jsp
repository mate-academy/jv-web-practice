<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create car</title>
</head>
<body>
<h2>Please fill the form below </h2>
<form method="post" action="${pageContext.request.contextPath}/cars/create">
    Model <input type="text" name="model"> <br>
    Manufacturer id <input type="text" name="manufacturer_id"> <br>
    <button type="submit">Confirm</button>

</form>
</body>
</html>
