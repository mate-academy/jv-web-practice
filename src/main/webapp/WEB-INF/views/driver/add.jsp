<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>TAXI SERVICE</title>
</head>
<body>
    <h3>Add driver to DB</h3>

    <form method="post" action="${pageContext.request.contextPath}/drivers/add">
        Name <input type="text" name="name"><br>
        LicenseNumber <input type="text" name="licenseNumber"><br>
        <button type="submit">Create</button>
    </form>
    <td><a href="${pageContext.request.contextPath}/service"><- back to service menu</a></td>
</body>
</html>
