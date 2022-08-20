<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Drivers controllers</title>
</head>
<style>
    body {
        font-family: Helvetica, sans-serif;
        font-size: 12px;
        line-height: 16px;
    }
</style>
<body>
<h2>Add driver to DB</h2>
<form method="post" action="${pageContext.request.contextPath}/drivers/add">
    Driver name:<br>
    <label>
        <input type="text" name="name">
    </label><br>
    License number:<br>
    <label>
        <input type="text" name="licenseNumber">
    </label><br><br>
    <input type="submit" value="Add">
    <input type="reset">
</form>
</body>
</html>
