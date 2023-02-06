<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create new car</title>
</head>
<body>
<form method="post" action="${pageContext.request.contextPath}/cars/create">
    <table>
        <tr>
            <td>Model</td>
            <td><input type="text" name="model"><br></td>
        </tr>
        <tr>
            <td>Manufacturer ID</td>
            <td><input type="number" name="manufacturer_id"></td>
        </tr>
    </table>
    <button type="submit">Create car</button>
</form>
<form method="get"
      action="${pageContext.request.contextPath}/index">
    <button type="submit">
        back to service
    </button>
</form>
</body>
</html>
