<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title style="text-align: center">Add driver to our service</title>
</head>
<body>
<br>
<h1 style="color: chocolate;font-size: 30px; text-align: center;">
    Create&Add a new driver to service:
</h1>
<br>
<br>
<form method="post" action="/drivers/create" style="text-align: center">
    Name <input type="text" name="name">
    <br>
    <br>
    License number <input type="text" name="license_number">
    <br>
    <br>
    <button type="submit" ;
            style="width: 200px; height: 45px; color: white; background-color: #2DC766; border: #2DC766; border-radius: 5px">
        Add new driver
    </button>
</form>
<h1 style="font-size: 30px; text-align: center; padding-top: 30px">
    <a href="/" style="color: grey; text-decoration: none">BACK TO MAIN PAGE</a>
</h1>
<img src="/img/newDriver.gif" alt="Hi"
     style="margin-left: auto; margin-right: auto; width: 400px; height: 300px; display: block">
</body>
</html>
