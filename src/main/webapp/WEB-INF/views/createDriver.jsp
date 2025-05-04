<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add new driver</title>
</head>
<body>
<form method="post"
      action="${pageContext.request.contextPath}/createDriver">
    <table>
        <tr>
            <td>Driver name</td>
            <td><input type="text" name="name"><br></td>
        </tr>
        <tr>
            <td>License</td>
            <td><input type="text" name="license_number"></td>
        </tr>
    </table>
    <button type="submit">Add driver</button>
</form>
<form method="get"
      action="${pageContext.request.contextPath}/index">
    <button type="submit">
        back to service
    </button>
</form>
</body>
</html>
