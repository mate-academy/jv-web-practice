<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add Car</title>
</head>
<body>
    <form method="post" action="${pageContext.request.contextPath}/cars/add">
        Model <input type="text" name="model"><br>
        Manufacturer Id <input type="number" name="manufacturer_id"><br>
        <button type="submit">Create</button>
    </form>
</body>
</html>
