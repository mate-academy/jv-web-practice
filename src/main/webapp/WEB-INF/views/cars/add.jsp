<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Adding a car</title>
</head>
<body>
<h1>Enter information about the car:</h1>

<form method="post" action="${pageContext.request.contextPath}/cars/add">
    Model <input type="text" name="model"><br>
    ID of manufacturer <input type="text" name="manufacturerId"><br>
    <button type="submit">Confirm</button>

</form>
</body>
</html>
