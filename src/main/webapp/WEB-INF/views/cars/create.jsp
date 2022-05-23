<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>CREATE CAR</title>
</head>
<body>
<h1>CREATE CAR USING THE FORM BELOW:</h1>

<form method="post" action="${pageContext.request.contextPath}/cars/create">
    Model <input type="text" name="model"><br>
    Manufacturer <input type="number" name="id"><br>
    <button type="submit">Create</button>
</form>
</body>
</html>
