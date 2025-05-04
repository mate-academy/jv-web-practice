<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Adding a new Driver</title>
</head>
<body style="display:flex; flex-direction:column; justify-content:center; text-align: center">
    <h10><a style="text-decoration: none" href="${pageContext.request.contextPath}/menu">&#8592;Back to menu</a></h10>
    <h1>Adding a new Driver:</h1>
<form method="post" action="${pageContext.request.contextPath}/drivers/add" style="display:flex; justify-content:center">
    <table border="4">
        <tr>
            <td>Driver Name:</td>
            <td><input type="text" name="driverName"><br></td>
        </tr>
        <tr>
            <td>License Number: </td>
            <td><input type="text" name="licenseNumber"><br></td>
        </tr>
        <tr>
            <td colspan="2" align="center"><button type="submit">Create</button></td>
        </tr>
    </table>
</form>
</body>
</html>
