<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add manufacturer</title>
</head>
<style>
    body {
        font-family: Helvetica, sans-serif;
        font-size: 12px;
        line-height: 16px;
    }
</style>
<body>
<h2>Add manufacturer to DB</h2>
<form method="post" action="${pageContext.request.contextPath}/manufacturers/add">
    Manufacturer name:<br>
    <input type="text" name="name"><br>
    Manufacturer country:<br>
    <input type="text" name="country"><br><br>
    <input type="submit" value="Add">
    <input type="reset">
</form>
</body>
</html>
