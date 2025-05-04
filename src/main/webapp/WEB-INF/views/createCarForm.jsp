<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>create car</title>
</head>
<body>
    <h1>Hello ! I can add a new car to db</h1>
    <form method="post" action="${pageContext.request.contextPath}/createCar">
        Model<input type="text" name="model"><br>
        Manufacturer id<input type="text" name="manufacturerId"><br>
        <button type="submit">Confirm</button>
    </form>
</body>
</html>
