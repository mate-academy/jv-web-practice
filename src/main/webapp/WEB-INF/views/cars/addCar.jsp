<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Registration car</title>
</head>
<body>
    <h1>Add car</h1>

<form method="post" action="${pageContext.request.contextPath}/cars/addCar">
    <label>
        MODEL
        <input type="text" name="model">
    </label><br>

    <label>
        MANUFACTURER
        <input type="text" name="manufacturer_id">
    </label><br>
        <button type="submit">Confirm</button>
</form>
</body>
</html>
