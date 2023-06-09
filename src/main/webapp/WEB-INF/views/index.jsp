<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Taxi service</title>
</head>
<body>
<h1>Taxi service</h1>
<table>
    <tr>
        <td><b>Drivers</b></td>
        <td><b>Cars</b></td>
        <td><b>Manufacturers</b></td>
    </tr>
    <tr>
        <td style="vertical-align: top">
            <ul>
                <li><a href="${pageContext.request.contextPath}/drivers">Show all drivers</a></li>
                <li><a href="${pageContext.request.contextPath}/drivers/add">Add driver</a></li>
            </ul>
        </td>
        <td style="vertical-align: top">
            <ul>
                <li><a href="${pageContext.request.contextPath}/cars">Show all cars</a></li>
                <li><a href="${pageContext.request.contextPath}/cars/add">Add car</a></li>
                <li><a href="${pageContext.request.contextPath}/cars/drivers/add">Add driver to car</a></li>
            </ul>
        </td>
        <td style="vertical-align: top">
            <ul>
                <li><a href="${pageContext.request.contextPath}/manufacturers">Show all manufacturers</a></li>
                <li><a href="${pageContext.request.contextPath}/manufacturers/add">Add manufacturer</a></li>
            </ul>
        </td>
    </tr>
</table>
</body>
</html>
