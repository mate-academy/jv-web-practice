<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Taxi service</title>
</head>
<body>
<h3> Create Driver </h3>
<form action="${pageContext.request.contextPath}/drivers/add" method="post">
    <table style="width: 20%">
        <tr>
            <td>Name</td>
            <td><input type="text" name="name" required/></td>
        </tr>
        <tr>
            <td>License Number</td>
            <td><input type="text" name="licenseNumber" required/></td>
        </tr>
    </table>
    <input type="submit" value="Confirm" /></form>
</body>
</html>
