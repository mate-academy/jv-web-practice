<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add new manufacturer</title>
</head>
<body>
<form method="post" action="${pageContext.request.contextPath}/manufacturers/add">
    <table>
        <tr>
            <td>Manufacturer name</td>
            <td><input name="name" type="text"></td>
        </tr>
        <tr>
            <td>Manufacturer country</td>
            <td><input name="country" type="text"></td>
        </tr>
        <tr>
            <td></td>
            <td><button type="submit">Save</button></td>
        </tr>
    </table>
</form>
</body>
</html>
