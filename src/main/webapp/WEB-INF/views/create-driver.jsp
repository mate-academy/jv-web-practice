<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create driver</title>
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
    <form method="post" action="${pageContext.request.contextPath}/displayAllDrivers/createDriver">
        <h1>To create a new driver, please fill out the form below.</h1>
        name <input type="text" name="name"><br>
        <br>
        licenseNumber <input type="text" name="licenseNumber"><br>
        <button type="submit">Confirm</button>
    </form>
</div>
</body>
</html>
