<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Cars controllers</title>
</head>
<style>
    body {
        font-family: Helvetica, sans-serif;
        font-size: 12px;
        line-height: 16px;
    }
</style>
<body>
<h2>Add cars to DB</h2>
<form method="post" action="${pageContext.request.contextPath}/cars/add">
    Manufacturer id:<br>
    <input type="number" name="manufacturer_id"><br>
    Model:<br>
    <input type="text" name="model"><br><br>
    <input type="submit" value="Add">
    <input type="reset">
</form>
<br>
<a href="${pageContext.request.contextPath}/manufacturers">
    <button>MANUFACTURERS</button>
</a>
</body>
</html>
