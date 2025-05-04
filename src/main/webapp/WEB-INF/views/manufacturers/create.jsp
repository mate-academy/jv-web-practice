<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create manufacturer</title>
</head>
<body>
<form method="post" action="${pageContext.request.contextPath}/manufacturers/create">
    <table>
        <tr>
            <td>Manufacturer</td>
            <td><input type="text" name="name"><br></td>
        </tr>
        <tr>
            <td>Country</td>
            <td><input type="text" name="country"></td>
        </tr>
    </table>
    <button type="submit">Create manufacturer</button>
</form>
<form method="get"
      action="${pageContext.request.contextPath}/index">
    <button type="submit">
        back to service
    </button>
</form>
</form>
</body>
</html>
