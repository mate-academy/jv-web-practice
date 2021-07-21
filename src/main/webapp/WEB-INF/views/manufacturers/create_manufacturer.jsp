<%@ page contentType="text/html;charset=UTF-8"%>
<html>
<head>
    <style>
        form {
            text-align: center;
            margin-top: 200px
        }
    </style>
    <title>Register a new driver</title>
</head>
<body>
<form name="createManufacturerForm" method="post" action="${pageContext.request.contextPath}/manufacturers/create">
    Name: <input type="text" name="name"/> <br/>
    Country: <input type="text" name="country"/> <br/>
    <input type="submit" value="Create Manufacturer"/>
</form>
</body>
</html>
