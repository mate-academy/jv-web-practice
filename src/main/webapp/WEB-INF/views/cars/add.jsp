<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add car to DB</title>
</head>
<body>
    <h1>Create new car</h1>
        <form method="post" action="${pageContext.request.contextPath}/cars/add">
            Model <input type="text" name="model"><br>
            Manufacturer_id <input type="text" name="manufacturerId"><br>
            <button type="  submit">Confirm</button>
        </form>
</body>
</html>
