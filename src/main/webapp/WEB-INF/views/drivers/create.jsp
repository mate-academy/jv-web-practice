<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Taxi drivers</title>
</head>
<body>
<h1>Create driver</h1>
<form method="post" action="${pageContext.request.contextPath}/drivers/create">
    <table>
        <tr>
            <td>Driver's name</td>
            <td><input type="text" name="name"><br></td>
        </tr>
        <tr>
            <td>License number</td>
            <td><input type="text" name="licenseNumber"><br></td>
        </tr>
    </table>
    <button type="submit">Create</button>
</form>
</body>
</html>
