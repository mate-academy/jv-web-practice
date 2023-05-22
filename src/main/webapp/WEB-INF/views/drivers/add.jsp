<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create driver</title>
</head>
<body>
<h1>Please fill the form below</h1>
<form method="post" action="${pageContext.request.contextPath}/drivers/add">
    <table>
        <tr>
            <td>Driver name</td>
            <td><input type="text" name="driver_name"></td>
        </tr>
        <tr>
            <td>License</td>
            <td><input type="text" name="license"></td>
        </tr>
    </table>
    <button type="submit">add driver</button>
</form>
</body>
</html>
