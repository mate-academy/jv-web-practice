<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Taxi service</title>
</head>
<body>
<h1> Create Car </h1>
<form action="${pageContext.request.contextPath}/cars/add" method="post">
    <table>
        <tr>
            <td>Model</td>
            <td><input type="text" name="model" required/></td>
        </tr>
        <tr>
            <td>Manufacturer</td>
            <td><input type="text" name="manufacturerId" required/></td>
        </tr>
    </table>
    <input type="submit" value="Confirm" />
</form>
</body>
</html>