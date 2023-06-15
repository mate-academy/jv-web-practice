<%@ page contentType="text/html;charset=UTF-8"%>
<html>
<head>
    <title>Add car</title>
</head>
<body>
    <h1>Please, fill the fields about new car</h1>
    <form method="post" action="${pageContext.request.contextPath}/cars/add">
        Model <input type="text" name="model" required><br>
        Manufacturer ID <input type="number" name="manufacturer_id" required><br>
        <button type="submit">Confirm</button>
    </form>
</body>
</html>
