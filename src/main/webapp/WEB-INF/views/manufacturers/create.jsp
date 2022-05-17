<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Taxi manufacturers</title>
</head>
<body>
<h1>Create manufacturer</h1>
<form method="post" action="${pageContext.request.contextPath}/manufacturers/create">
    <table>
        <tr>
            <td>Manufacturer's name</td>
            <td><input type="text" name="name"><br></td>
        </tr>
        <tr>
            <td>Manufacturer's country</td>
            <td><input type="text" name="country"><br></td>
        </tr>
    </table>
    <button type="submit">Create</button>
</form>
</body>
</html>
