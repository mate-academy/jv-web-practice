<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create car</title>
</head>
<body>
    <h1>Please fill the form bellow</h1>
    <form method="post" action="${pageContext.request.contextPath}/cars/add">
        Car model <input type="text" name="model"><br>
        Manufacturer_id <input type="text" name="manufacturer_id"><br>
        <button type="submit">Confirm</button>
    </form>
</body>
</html>
