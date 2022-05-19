<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create a new car</title>
</head>
<body>
    <h1>Please fill in the fields below:</h1>
    <form method="post" action="${pageContext.request.contextPath}/cars/add">
        Model <input type="text" name="model"><br>
        Manufacturer ID <input type="text" name="manufacturer_id"><br>
        <button type="submit">Create</button>
    </form>
</body>
</html>
