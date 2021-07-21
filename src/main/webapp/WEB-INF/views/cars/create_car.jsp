<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <style>
        form {
            text-align: center;
            margin-top: 200px
        }
    </style>
    <title>Create a new car</title>
</head>
<body>
<form name="createCarForm" method="post" action="${pageContext.request.contextPath}/cars/create">
    Model: <input type="text" name="model"/> <br/>
    Manufacturer ID: <input type="number" name="manufacturer_id"/> <br/>
    <input type="submit" value="Create Car"/>
</form>
</body>
</html>
