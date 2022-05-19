<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create a new driver</title>
</head>
<body>
<h1>Fill in driver details</h1>
<form method="post" action="${pageContext.request.contextPath}/drivers/create">
    <table>
        <tr>
            <td>Name:</td>
            <td><input type="text" name="name"></td>
        </tr>
        <tr>
            <td>License number:</td>
            <td><input type="text" name="license_number"></td>
        </tr>
        <tr>
            <td><button type="submit">Create driver</button></td>
            <td></td>
        </tr>
    </table>

</form>
</body>
</html>
