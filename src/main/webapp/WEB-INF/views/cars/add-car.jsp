<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add a car</title>
</head>
<body>
    <span style="font-family: monospace; color: #000000; "><h1>Please fill the form below</h1>

        <form method="post" action="${pageContext.request.contextPath}/cars/add">
            Model <input type="text" name="model"><br>
            Manufacturer ID <input type="number" name="manufacturer_id"><br>
            <button type="submit"><span style="font-family: monospace; color: #000000; ">Add car</span></button>
        </form>
    </span>
</body>
</html>
