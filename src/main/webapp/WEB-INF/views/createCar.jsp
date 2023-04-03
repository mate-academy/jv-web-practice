<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create car</title>
    <style>
        body {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
    </style>
</head>
<body>
<div style="margin: auto; width: 50%;">
    <form method="post" action="${pageContext.request.contextPath}/displayAllCars/createCar">
        <h1>To create a new car, please fill out the form below.</h1>
        model <input type="text" name="model"><br>
        <br>
        manufacturer <input type="text" name="manufacturer"><br>
        <button type="submit">Confirm</button>
    </form>
</div>
</body>
</html>
