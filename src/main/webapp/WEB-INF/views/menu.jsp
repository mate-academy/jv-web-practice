<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Taxi</title>
</head>
<body style="display:flex; flex-direction:column; justify-content:center; text-align: center; align-content: center">
    <h1>MENU</h1>
<table border="4" style="margin-left: auto; margin-right: auto;">
    <tbody align="center">
        <tr style="background-color: gray">
            <th>CARS</th>
            <th>MANUFACTURERS</th>
            <th>DRIVERS</th>
        </tr>
        <tr >
            <td>
                <a href="${pageContext.request.contextPath}/cars/add">Create Car</a>
            </td>
            <td>
                <a href="${pageContext.request.contextPath}/manufacturers/add">Create Manufacturer</a>
            </td>
            <td>
                <a href="${pageContext.request.contextPath}/drivers/add">Add Driver</a>
            </td>
        </tr>
        <tr>
            <td>
                <a href="${pageContext.request.contextPath}/cars">Cars List</a>
            </td>
            <td>
                <a href="${pageContext.request.contextPath}/manufacturers">Manufacturers List</a>
            </td>
            <td>
                <a href="${pageContext.request.contextPath}/drivers">Drivers List</a>
            </td>
        </tr>
        <tr>
            <td>
                <a href="${pageContext.request.contextPath}/cars/drivers/add">Add Driver To Car</a>
            </td>
        </tr>
    </tbody>
</table>
</body>
</html>
