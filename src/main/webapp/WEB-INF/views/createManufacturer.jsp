<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create Manufacturer</title>
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
    <form method="post" action="${pageContext.request.contextPath}/displayAllManufacturers/createManufacturer">
        <h1>To create a new manufacturer, please fill out the form below</h1>
        name <input type="text" name="name"><br>
        <br>
        country <input type="text" name="country"><br>
        <button type="submit">Confirm</button>
    </form>
</div>
</body>
</html>
