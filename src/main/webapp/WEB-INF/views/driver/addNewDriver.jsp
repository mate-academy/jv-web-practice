<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add new driver</title>
</head>
<body>
    <h1>Add new driver</h1>
    <form method="post" action="${pageContext.request.contextPath}/drivers/add">
        <table>
            <tr>
                <td>Name :</td>
                <td><input type="text" name="name" required></td>
            </tr>
            <tr>
                <td>License number :</td>
                <td><input type="text" name="licenceNumber" required></td>
            </tr>
            <tr>
                <td><button type="submit">Register new driver</button></td>
            </tr>
        </table>
    </form>
</body>
</html>
