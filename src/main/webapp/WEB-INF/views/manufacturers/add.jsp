<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create manufacturer</title>
</head>
<body>
<h1>Please fill the form below</h1>
<form method="post" action="${pageContext.request.contextPath}/manufacturers/add">
    <table>
        <tr>
            <td>Manufacturer name</td>
            <td><input type="text" name="name"></td>
        </tr>
        <tr>
            <td>Country</td>
            <td><input type="text" name="country"></td>
        </tr>
    </table>
    <button type="submit">add manufacturer</button>
</form>
</body>
</html>
