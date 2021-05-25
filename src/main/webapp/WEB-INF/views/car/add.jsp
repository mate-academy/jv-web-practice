<%@ page contentType="text/html;charset=UTF-8" language="java" %><html>
<head>
    <title>Add car</title>
</head>
<body>
    <h1>Add car form: </h1>

    <form method ="post" action="${pageContext.request.contextPath}/cars/add">
        Model <input type="text" name="model"><br>
        Manufacturer ID <input type="number" name="manufacturerId"><br>
        <button type="submit">Confirm</button>
    </form>
</body>
</html>
