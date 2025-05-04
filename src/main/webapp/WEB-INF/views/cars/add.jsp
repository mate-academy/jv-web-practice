<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create car</title>
</head>
<body>
    <h1>Create new car</h1>
    <form method="post" action="${pageContext.request.contextPath}/cars/add">
        Car model <input type="text" name="model"><br>
        Manufacturer id <input type="number" name="manufacturer_id"><br>
        <button type="submit">Confirm</button>
    </form>
</body>
</html>
