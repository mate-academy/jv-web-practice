<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <style>
        table {
            margin-left: auto;
            margin-right: auto;
            border-collapse: collapse;
            width: 500px;
            text-align: center;
            font-size: 20px;
        }
        h1 {
            margin-left: auto;
            margin-right: auto;
            border-collapse: collapse;
            width: 500px;
            text-align: center;
            font-size: 40px;
        }
    </style>
</head>
<head>
    <title>Taxi project</title>
</head>
<body>
    <h1>Main menu</h1>
<table>
    <tr>
        <td><a href="${pageContext.request.contextPath}/cars/drivers">All drivers</a></td>
    </tr>
    <tr>
        <td><a href="${pageContext.request.contextPath}/cars/drivers/create">Create driver</a></td>

    </tr>
    <tr>
        <td><a href="${pageContext.request.contextPath}/manufacturers">Get all manufacturers</a></td>
    </tr>
    <tr>
        <td><a href="${pageContext.request.contextPath}/manufacturers/create">Create manufacturer</a></td>
    </tr>
    <tr>
        <td><a href="${pageContext.request.contextPath}/cars">All cars</a></td>
    </tr>
    <tr>
        <td><a href="${pageContext.request.contextPath}/cars/create">Create car</a></td>
    </tr>
    <tr>
        <td><a href="${pageContext.request.contextPath}/cars/addDriver">Add driver to a car</a></td>
    </tr>
</table>
</body>
</html>
