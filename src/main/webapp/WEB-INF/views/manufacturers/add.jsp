<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add manufacturer</title>
</head>
<body>
<h1>Add manufacturer</h1>
<form method="post" action="${pageContext.request.contextPath}/manufacturers/add">
    <table>
        <tr>
            <td>Name:</td>
            <td><input type="text" name="name" required></td>
        </tr>
        <tr>
            <td>Country:</td>
            <td><input type="text" name="country" required></td>
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