<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create new driver</title>
</head>
<body>
    <form method="post" action="${pageContext.request.contextPath}/drivers/add">
        <table>
            <tr>
                <td>Name: </td>
                <td><input type="text" name="name" /></td>
            </tr>
            <tr>
                <td>License number: </td>
                <td><input type="text" name="license_number" /></td>
            </tr>
        </table>
        <button type="submit">Add driver</button>
    </form>
</body>
</html>
