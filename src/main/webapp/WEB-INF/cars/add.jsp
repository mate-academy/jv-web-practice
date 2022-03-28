<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create Car</title>
</head>
<body>
<h1>Create Car</h1>
<h2> </h2>
<h3>Please write model and manufacturer ID car's</h3>
<form methods="post" action="${pageContext.request.contextPath}/cars/createCar">
    <font color=blue>
        Model <input type="text" name="model"><br>
        ManufacturerID <input type="text" name="manufacturer"><br>
        <button type="submit">Confirm</button>
    </font>
</form>
</body>
</html>
