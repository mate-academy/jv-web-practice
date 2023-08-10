<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Taxi services</title>
</head>
<body>
<table valign="middle" align="center" border="BLACK" cellpadding="5">
    <caption>TAXI SERVICES</caption>
    <tr>
        <td align="center"><a href="${pageContext.request.contextPath}/drivers/add">
            Creating a driver</a></td>
    </tr>
    <tr>
        <td align="center"><a href="${pageContext.request.contextPath}/drivers">
            Display all drivers</a></td>
    </tr>
    <tr>
        <td align="center"><a href="${pageContext.request.contextPath}/drivers/delete">
            Delete a certain driver</a></td>
    </tr>
    <tr>
        <td align="center"><a href="${pageContext.request.contextPath}/manufacturers/add">
            Creating a manufacturer</a></td>
    </tr>
    <tr>
        <td align="center"><a href="${pageContext.request.contextPath}/manufacturers">
            Display all manufacturers</a></td>
    </tr>
    <tr>
        <td align="center"><a href="${pageContext.request.contextPath}/manufacturers/delete">
            Delete a certain manufacturer</a></td>
    </tr>

    <tr>
        <td align="center"><a href="${pageContext.request.contextPath}/cars/add">
            Creating a car</a></td>
    </tr>
    <tr>
        <td align="center"><a href="${pageContext.request.contextPath}/cars">
            Display all cars</a></td>
    </tr>
    <tr>
        <td align="center"><a href="${pageContext.request.contextPath}/cars/delete">
            Delete a certain car</a></td>
    </tr>
    <tr>
        <td align="center"><a href="${pageContext.request.contextPath}/drivers/car/add">
            Adding driver to car</a></td>
    </tr>
</table>

</body>
</html>
