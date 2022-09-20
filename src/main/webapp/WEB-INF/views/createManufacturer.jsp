<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Taxi service</title>
</head>
<body>
<h3> Create Manufacturer </h3>
<form method="post" action="${pageContext.request.contextPath}/manufacturers/add">
    <table style="width: 20%">
        <tr>
            <td>Name</td>
            <td><input type="text" name="name" required/></td>
        </tr>
        <tr>
            <td>Country</td>
            <td><input type="text" name="country" required/></td>
        </tr>
    </table>
    <input type="submit" value="Confirm" />
</form>
</body>
</html>
