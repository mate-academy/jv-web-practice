<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>My team</title>
</head>
<body>
<h1>Hello, mates!</h1>
<table border="1" style="font-size: 25px">
    <tr>
        <td>Drivers</td>
        <td>Manufacturers</td>
        <td>Cars</td>
    </tr>
    <tr>
        <td><a href="/drivers/all">Get all drivers</a></td>
        <td><a href="/manufacturers/all">Get all manufacturers</a></td>
        <td><a href="/cars/all">Get all cars</a></td>
    </tr>
    <tr>
        <td><a href="/drivers/create">Create driver</a></td>
        <td><a href="/manufacturers/create">Create manufacturer</a></td>
        <td><a href="/cars/create">Create car</a></td>
    </tr>
    <tr>
        <td>-</td>
        <td>-</td>
        <td><a href="/cars/add-driver">Add driver to car</a></td>
    </tr>
</table>

</body>
</html>
