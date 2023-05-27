<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create driver</title>
</head>
<body>
    <h1><a href="${pageContext.request.contextPath}/">Taxi service</a></h1>
    <h2>Create new driver</h2>
    <form method="post" action="${pageContext.request.contextPath}/drivers/add">
        <table>
        <tr>
            <td>Name</td>
            <td><input type="text" name="driver_name" required="required"></td>
        </tr>
        <tr>
            <td>License number</td>
            <td><input type="text" name="license_number" required="required"></td>
        </tr>
        <tr>
            <td></td>
            <td><button type="submit">Confirm data</button></td>
        </tr>
        </table>
    </form>
</body>
</html>
