<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add car</title>
</head>
<body>
<h1>Add car</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/add">
    <table>
        <tr>
            <td>Model:</td>
            <td><input type="text" name="model" required></td>
        </tr>
        <tr>
            <td>Manufacturer id:</td>
            <td><input type="number" name="manufacturer_id" required></td>
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