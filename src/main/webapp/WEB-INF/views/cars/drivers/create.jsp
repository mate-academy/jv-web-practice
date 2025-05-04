<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create driver</title>
</head>
<body>
<h2><a href="/">Main page</a> </h2>
<h1>Welcome to create driver form!</h1>
<h3>Please insert data below:</h3>
<form method="post" action="${pageContext.request.contextPath}/cars/drivers/add">
    _________________________________Car_id (see table below) <input type="text" name="car_id"><br>
    Id (HINT: if have - name and licence number not input!!!) <input type="text" name="id"><br>
    _____________________________________________________Name <input type="text" name="name"><br>
    ___________________________________________License number <input type="text" name="license_number"><br>
    <button type="submit">Create</button>
</form>
</body>
</html>
