<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
    <head>
        <title>New Car</title>
    </head>
<body>
    <h1>Enter car Parameters:</h1>
    <form method="post" action="${pageContext.request.contextPath}/cars/add"><br>
    Car Model: <input type="text" name="car_model"><br><br>
    Manufacturer Id: <input type="text" name="car_manufacturer"><br><br>
    <button type="submit">Confirm</button>
    </form>
    <br>
    <h3><a href="${pageContext.request.contextPath}/">Back to menu</a></h3>
</body>
</html>