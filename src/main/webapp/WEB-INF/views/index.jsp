<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Index</title>
</head>
<body>
<h3>Choose operation for entity:</h3>
<table>
    <tr>
        <td>Driver</td>
        <td>Manufacturer</td>
        <td>Car</td>
    </tr>
    <tr>
        <td><ul>
            <li><a href="${pageContext.request.contextPath}/drivers/add">Add driver</a></li>
            <li><a href="${pageContext.request.contextPath}/drivers">Display all drivers</a></li>
        </ul></td>
        <td><ul>
            <li>
                <a href="${pageContext.request.contextPath}/manufacturers/add">Add manufacturer
                </a>
            </li>
            <li>
                <a href="${pageContext.request.contextPath}/manufacturers">Display all manufacturers
                </a>
            </li>
        </ul></td>
        <td><ul>
            <li><a href="${pageContext.request.contextPath}/cars/add">Add car</a></li>
            <li><a href="${pageContext.request.contextPath}/cars/drivers/add">
                Add some driver to the car</a></li>
            <li><a href="/cars">Display all cars</a></li>
        </ul></td>
    </tr>
</table>
</body>
</html>
