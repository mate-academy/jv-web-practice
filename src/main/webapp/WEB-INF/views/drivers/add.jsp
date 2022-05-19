<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add driver</title>
</head>
<body>
<h1>Add driver</h1>
<form method="post" action="${pageContext.request.contextPath}/drivers/add">
    <table>
        <tr>
            <td>Name:</td>
            <td><input type="text" name="name" required></td>
        </tr>
        <tr>
            <td>License number:</td>
            <td><input type="text" name="license_number" required></td>
        </tr>
        <tr>
            <td>
                <button type="submit">Confirm</button>
            </td>
            <td></td>
        </tr>
    </table>
</form>
<a href="${pageContext.request.contextPath}/index">back to index page</a>
</body>
</html>
