<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create new manufacturer</title>
</head>
<body>
<h3>Create a new manufacturer:</h3>
<form method="post" action="${pageContext.request.contextPath}/manufacturers/create">
    <table>
        <tr>
            <th>Name</th>
            <th>Country</th>
        </tr>
        <tr>
            <td><input type="text" name="name"> </td>
            <td><input type="text" name="country"> </td>
        </tr>
    </table>
    <button type="submit">Create manufacturer</button>
</form>
</body>
</html>