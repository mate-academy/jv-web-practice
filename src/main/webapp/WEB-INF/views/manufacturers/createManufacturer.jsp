<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create manufacturer</title>
</head>
<body>
<form method="post" id="manufacturer" action="${pageContext.request.contextPath}/manufacturers/create"></form>
<h1>Create manufacturer:</h1>
<table>
    <tr>
        <th>Name</th>
        <th>Country</th>
        <th>Create</th>
    </tr>
    <tr>
        <td>
            <input type="text" name="name" form="manufacturer" required>
        </td>
        <td>
            <input type="text" name="country" form="manufacturer" required>
        </td>
        <td>
            <input type="submit" name="create" form="manufacturer" required>
        </td>
    </tr>
</table>
</body>
</html>
