<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Create new car</title>
</head>
<body>
<h2>Please fill the form below to create new car:</h2>

<form method="post" action="${pageContext.request.contextPath}/cars/add">
    <label>
        Model <input type="text" name="model" required>
    </label><br>
    <label>
        Manufacturer Id
        <input type="number" name="manufacturer_id" checked required>
    </label><br>
    <button type="submit">Confirm</button>
</form>
</body>
</html>
